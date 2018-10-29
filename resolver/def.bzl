load("@bazel_skylib//lib:shell.bzl", "shell")

def _impl(ctx):
    args = [
        "--requirement=%s" % ctx.file.requirement.short_path,
        "--python_interpreter=%s" % ctx.attr.python_interpreter,
        "--requirements_label=%s" % ctx.attr.requirements_label,
    ]

    if ctx.attr.no_index:
        args.append("--no-index")

    verbosity = "0"
    if ctx.attr.verbose:
        # This is somewhat arbitrary, but >=3 will show progress as links are crawled.
        # Otherwise, no output is produced...
        verbosity = "3"

    for url in ctx.attr.extra_index_urls:
        args.append("--extra-index-url=%s" % url)

    for url in ctx.attr.find_links:
        args.append("--find-links=%s" % url)

    for platform in ctx.attr.platforms:
        args.append("--platform=%s" % platform)

    output = ctx.actions.declare_file(ctx.label.name + '.bash')
    ctx.actions.expand_template(
        template = ctx.file._template,
        output = output,
        is_executable = True,
        substitutions = {
            "{{PEX_GENERATE_DEPS_EXE}}": ctx.executable._generator_exe.short_path,
            "{{ARGS}}": shell.array_literal(args),
            "{{VERBOSITY}}": verbosity,
            "{{OUTPUT_PATH}}": ctx.attr.target_path,
        },
    )

    runfiles = ctx.runfiles(
        files = [ctx.executable._generator_exe],
    ).merge(
        ctx.attr._generator_exe.default_runfiles
    ).merge(
        ctx.attr._generator_exe.data_runfiles
    )


    return [DefaultInfo(
        files = depset([output]),
        runfiles = runfiles,
        executable = output,
    )]


_pex_resolver = rule(
    implementation = _impl,
    attrs = {
        "requirement": attr.label(
            mandatory = True,
            allow_single_file = [".txt"],
        ),
        "python_interpreter": attr.string(
            mandatory = True,
            doc = "Python interpeter to use when unpacking wheels and determining package deps",
        ),
        "requirements_label": attr.string(
            mandatory = True,
            doc = "Label used to load the generated requirements.bzl",
        ),
        "platforms": attr.string_list(
            mandatory = True,
            doc = ("List of platforms to collect packages for, e.g. linux_x86_64-cp-27-cp27mu"
                   + "See https://github.com/pantsbuild/pex/blob/master/tests/test_platform.py"
                   + " for examples; this is unfortunately underdocumented."),
        ),
        "no_index": attr.bool(
            default = False,
            doc = "Ignore the default PyPI index (pip install --no-index)",
        ),
        "extra_index_urls": attr.string_list(
            mandatory = False,
            doc = "Extra simple index URLs to use (pip install --extra-index-url)",
        ),
        "find_links": attr.string_list(
            mandatory = False,
            doc = "List of links to distributions (pip install --find-links)"
        ),
        "verbose": attr.bool(
            mandatory = False,
            default = True,
            doc = "Write verbose output to stderr",
        ),
        "target_path": attr.string(
            mandatory = False,
            doc = ("File to write out the generated dependencies to, relative to workspace root. "
                   + "Optional; will write to stdout otherwise."),
        ),
        "_generator_exe": attr.label(
            default = "@rules_python//resolver:pex_resolver",
            cfg = "host",
            executable = True,
        ),
        "_template": attr.label(
            default = "@rules_python//resolver:generator_wrapper.bash.tpl",
            allow_single_file = True,
        ),
    },
    executable = True,
)

def pex_resolver(**kwargs):
    tags = kwargs.get("tags", [])
    if "manual" not in tags:
        tags += ["manual"]
        kwargs["tags"] = tags
    _pex_resolver(**kwargs)
