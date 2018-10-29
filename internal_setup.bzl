# Requirements for building our piptool.
load(
    "//python:requirements.bzl",
    _piptool_install = "pip_install",
)

# Requirements for running the dependency resolver
load(
    "//resolver:requirements.bzl",
    _resolver_install = "pip_install",
)

# Imports for examples.
load(
    "//examples/helloworld:requirements.bzl",
    _helloworld_install = "pip_install",
)
load(
    "//examples/version:requirements.bzl",
    _version_install = "pip_install",
)
load(
    "//examples/boto:requirements.bzl",
    _boto_install = "pip_install",
)
# load(
#     "//examples/extras:requirements.bzl",
#     _extras_install = "pip_install",
# )


def rules_python_internal_setup():
    # Requirements for building our piptool.
    _piptool_install()
    # Requirements for running the dependency resolver
    _resolver_install()

    # Imports for examples.
    _helloworld_install()
    _version_install()
    _boto_install()
    # _extras_install()
