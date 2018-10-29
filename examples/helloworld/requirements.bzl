# AUTOGENERATED FILE. DO NOT MODIFY.

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_file")
load("@rules_python//python:whl.bzl", "whl_library")

def pip_install():
    _existing_rules = native.existing_rules()

    if "whl__futures_3_1_1__py3_any" not in _existing_rules:
        http_file(
            name = "whl__futures_3_1_1__py3_any",
            urls = ["https://files.pythonhosted.org/packages/05/80/f41cca0ea1ff69bce7e7a7d76182b47bb4e1a494380a532af3e8ee70b9ec/futures-3.1.1-py3-none-any.whl#sha256=3a44f286998ae64f0cc083682fcfec16c406134a81a589a5de445d7bb7c2751b"],
            sha256 = "3a44f286998ae64f0cc083682fcfec16c406134a81a589a5de445d7bb7c2751b",
            downloaded_file_path = "futures-3.1.1-py3-none-any.whl",
        )

    if "pypi__futures_3_1_1__py36_any" not in _existing_rules:
        whl_library(
            name = "pypi__futures_3_1_1__py36_any",
            whl = "@whl__futures_3_1_1__py3_any//file:futures-3.1.1-py3-none-any.whl",
            requirements = "@rules_python//examples/helloworld:requirements.bzl",
            extras = [],
            python_interpreter = "python3.6",
        )

_requirements = {
    "futures": ["@pypi__futures_3_1_1__py36_any//:pkg"],
}

def requirement(name):
    fail("requirement() has been renamed requirements(). It now takes and returns a list instead of a string.")

def requirements(names):
    if type(names) != "list":
        fail("requirements() now takes a list and returns a list")

    deps = []
    for name in names:
        name_key = name.replace("-", "_").lower()
        if name_key not in _requirements:
            fail("Could not find pip-provided dependency: '%s'" % name)
        deps += _requirements[name_key]
    return deps
