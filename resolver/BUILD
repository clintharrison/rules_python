load("//resolver:requirements.bzl", "requirements")

exports_files(["generator_wrapper.bash.tpl"])

py_binary(
    name = "pex_resolver",
    srcs = [
        "pex_resolver.py",
    ],
    main = "pex_resolver.py",
    deps = requirements([
        "urllib3",
        "pex",
        "subprocess32",
        "requests[security]"
    ]),
    visibility = ["//visibility:public"],
)
