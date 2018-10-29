# AUTOGENERATED FILE. DO NOT MODIFY.

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_file")
load("@rules_python//python:whl.bzl", "whl_library")

def pip_install():
    _existing_rules = native.existing_rules()

    if "whl__boto3_1_4_7__py2_py3_any" not in _existing_rules:
        http_file(
            name = "whl__boto3_1_4_7__py2_py3_any",
            urls = ["https://files.pythonhosted.org/packages/e0/7c/ed4ddcaa65dadba5992fba71b0cd221181f189dd87ac975d25d33c190a61/boto3-1.4.7-py2.py3-none-any.whl#sha256=38057b066990172ce6ebbf2a5e046a545503793581fcf14cab0e3821c6112eb0"],
            sha256 = "38057b066990172ce6ebbf2a5e046a545503793581fcf14cab0e3821c6112eb0",
            downloaded_file_path = "boto3-1.4.7-py2.py3-none-any.whl",
        )

    if "pypi__boto3_1_4_7__py36_any" not in _existing_rules:
        whl_library(
            name = "pypi__boto3_1_4_7__py36_any",
            whl = "@whl__boto3_1_4_7__py2_py3_any//file:boto3-1.4.7-py2.py3-none-any.whl",
            requirements = "@rules_python//examples/boto:requirements.bzl",
            extras = [],
            python_interpreter = "python3.6",
        )

    if "whl__botocore_1_7_48__py2_py3_any" not in _existing_rules:
        http_file(
            name = "whl__botocore_1_7_48__py2_py3_any",
            urls = ["https://files.pythonhosted.org/packages/78/07/88ef02fca320ff8f61a5c8f46739f72e715f8745c9ddbf59fc5dba43db1a/botocore-1.7.48-py2.py3-none-any.whl#sha256=5c1c023075269265f44a1c5b09a18d6865eca1c85a4be6886ddcc8af01b1c997"],
            sha256 = "5c1c023075269265f44a1c5b09a18d6865eca1c85a4be6886ddcc8af01b1c997",
            downloaded_file_path = "botocore-1.7.48-py2.py3-none-any.whl",
        )

    if "pypi__botocore_1_7_48__py36_any" not in _existing_rules:
        whl_library(
            name = "pypi__botocore_1_7_48__py36_any",
            whl = "@whl__botocore_1_7_48__py2_py3_any//file:botocore-1.7.48-py2.py3-none-any.whl",
            requirements = "@rules_python//examples/boto:requirements.bzl",
            extras = [],
            python_interpreter = "python3.6",
        )

    if "whl__docutils_0_15_2__py3_any" not in _existing_rules:
        http_file(
            name = "whl__docutils_0_15_2__py3_any",
            urls = ["https://files.pythonhosted.org/packages/22/cd/a6aa959dca619918ccb55023b4cb151949c64d4d5d55b3f4ffd7eee0c6e8/docutils-0.15.2-py3-none-any.whl#sha256=6c4f696463b79f1fb8ba0c594b63840ebd41f059e92b31957c46b74a4599b6d0"],
            sha256 = "6c4f696463b79f1fb8ba0c594b63840ebd41f059e92b31957c46b74a4599b6d0",
            downloaded_file_path = "docutils-0.15.2-py3-none-any.whl",
        )

    if "pypi__docutils_0_15_2__py36_any" not in _existing_rules:
        whl_library(
            name = "pypi__docutils_0_15_2__py36_any",
            whl = "@whl__docutils_0_15_2__py3_any//file:docutils-0.15.2-py3-none-any.whl",
            requirements = "@rules_python//examples/boto:requirements.bzl",
            extras = [],
            python_interpreter = "python3.6",
        )

    if "whl__jmespath_0_9_4__py2_py3_any" not in _existing_rules:
        http_file(
            name = "whl__jmespath_0_9_4__py2_py3_any",
            urls = ["https://files.pythonhosted.org/packages/83/94/7179c3832a6d45b266ddb2aac329e101367fbdb11f425f13771d27f225bb/jmespath-0.9.4-py2.py3-none-any.whl#sha256=3720a4b1bd659dd2eecad0666459b9788813e032b83e7ba58578e48254e0a0e6"],
            sha256 = "3720a4b1bd659dd2eecad0666459b9788813e032b83e7ba58578e48254e0a0e6",
            downloaded_file_path = "jmespath-0.9.4-py2.py3-none-any.whl",
        )

    if "pypi__jmespath_0_9_4__py36_any" not in _existing_rules:
        whl_library(
            name = "pypi__jmespath_0_9_4__py36_any",
            whl = "@whl__jmespath_0_9_4__py2_py3_any//file:jmespath-0.9.4-py2.py3-none-any.whl",
            requirements = "@rules_python//examples/boto:requirements.bzl",
            extras = [],
            python_interpreter = "python3.6",
        )

    if "whl__python_dateutil_2_8_0__py2_py3_any" not in _existing_rules:
        http_file(
            name = "whl__python_dateutil_2_8_0__py2_py3_any",
            urls = ["https://files.pythonhosted.org/packages/41/17/c62faccbfbd163c7f57f3844689e3a78bae1f403648a6afb1d0866d87fbb/python_dateutil-2.8.0-py2.py3-none-any.whl#sha256=7e6584c74aeed623791615e26efd690f29817a27c73085b78e4bad02493df2fb"],
            sha256 = "7e6584c74aeed623791615e26efd690f29817a27c73085b78e4bad02493df2fb",
            downloaded_file_path = "python_dateutil-2.8.0-py2.py3-none-any.whl",
        )

    if "pypi__python_dateutil_2_8_0__py36_any" not in _existing_rules:
        whl_library(
            name = "pypi__python_dateutil_2_8_0__py36_any",
            whl = "@whl__python_dateutil_2_8_0__py2_py3_any//file:python_dateutil-2.8.0-py2.py3-none-any.whl",
            requirements = "@rules_python//examples/boto:requirements.bzl",
            extras = [],
            python_interpreter = "python3.6",
        )

    if "whl__s3transfer_0_1_13__py2_py3_any" not in _existing_rules:
        http_file(
            name = "whl__s3transfer_0_1_13__py2_py3_any",
            urls = ["https://files.pythonhosted.org/packages/d7/14/2a0004d487464d120c9fb85313a75cd3d71a7506955be458eebfe19a6b1d/s3transfer-0.1.13-py2.py3-none-any.whl#sha256=c7a9ec356982d5e9ab2d4b46391a7d6a950e2b04c472419f5fdec70cc0ada72f"],
            sha256 = "c7a9ec356982d5e9ab2d4b46391a7d6a950e2b04c472419f5fdec70cc0ada72f",
            downloaded_file_path = "s3transfer-0.1.13-py2.py3-none-any.whl",
        )

    if "pypi__s3transfer_0_1_13__py36_any" not in _existing_rules:
        whl_library(
            name = "pypi__s3transfer_0_1_13__py36_any",
            whl = "@whl__s3transfer_0_1_13__py2_py3_any//file:s3transfer-0.1.13-py2.py3-none-any.whl",
            requirements = "@rules_python//examples/boto:requirements.bzl",
            extras = [],
            python_interpreter = "python3.6",
        )

    if "whl__six_1_12_0__py2_py3_any" not in _existing_rules:
        http_file(
            name = "whl__six_1_12_0__py2_py3_any",
            urls = ["https://files.pythonhosted.org/packages/73/fb/00a976f728d0d1fecfe898238ce23f502a721c0ac0ecfedb80e0d88c64e9/six-1.12.0-py2.py3-none-any.whl#sha256=3350809f0555b11f552448330d0b52d5f24c91a322ea4a15ef22629740f3761c"],
            sha256 = "3350809f0555b11f552448330d0b52d5f24c91a322ea4a15ef22629740f3761c",
            downloaded_file_path = "six-1.12.0-py2.py3-none-any.whl",
        )

    if "pypi__six_1_12_0__py36_any" not in _existing_rules:
        whl_library(
            name = "pypi__six_1_12_0__py36_any",
            whl = "@whl__six_1_12_0__py2_py3_any//file:six-1.12.0-py2.py3-none-any.whl",
            requirements = "@rules_python//examples/boto:requirements.bzl",
            extras = [],
            python_interpreter = "python3.6",
        )

_requirements = {
    "boto3": ["@pypi__boto3_1_4_7__py36_any//:pkg"],
    "botocore": ["@pypi__botocore_1_7_48__py36_any//:pkg"],
    "docutils": ["@pypi__docutils_0_15_2__py36_any//:pkg"],
    "jmespath": ["@pypi__jmespath_0_9_4__py36_any//:pkg"],
    "python_dateutil": ["@pypi__python_dateutil_2_8_0__py36_any//:pkg"],
    "s3transfer": ["@pypi__s3transfer_0_1_13__py36_any//:pkg"],
    "six": ["@pypi__six_1_12_0__py36_any//:pkg"],
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