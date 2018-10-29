# Copyright 2017 The Bazel Authors. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
package(default_visibility = ["//visibility:public"])
load("//resolver:def.bzl", "pex_resolver")

licenses(["notice"])  # Apache 2.0

exports_files(["LICENSE", "version.bzl"])

filegroup(
    name = "distribution",
    srcs = [
        "BUILD",
        "LICENSE",
        "internal_deps.bzl",
        "internal_setup.bzl",
        "//python:distribution",
        "//tools:distribution",
    ],
    visibility = ["//distro:__pkg__"],
)

pex_resolver(
    name = "resolve_requirements",
    requirement = "//python:requirements.txt",
    # this is used to load dependencies of one whl_library from the same resolved set
    requirements_label = "@rules_python//python:requirements.bzl",
    platforms = [
        "macosx_10_13-x86_64-cp-36-cp36m",
        "linux-x86_64-cp-36-cp36m",
    ],
    python_interpreter = "python",
    target_path = "python/requirements.bzl",
)

# `bazel run //:resolve_examples_helloworld_requirements` will resolve the requirements from its requirements.txt
# and write the generated requirements.bzl to examples/helloworld/requirements.bzl if resolving all dependencies for
# the given platforms was successful.
#
# extras is excluded for now, it has a dependency on `googleapis-common-protos` which doesn't have a wheel on PyPI
[pex_resolver(
    name = "resolve_examples_%s_requirements" % name,
    requirement = "//examples/%s:requirements.txt" % name,
    # this is used to load dependencies of one whl_library from the same resolved set
    requirements_label = "@rules_python//examples/%s:requirements.bzl" % name,
    platforms = [
        "macosx_10_13-x86_64-cp-36-cp36m",
        "linux-x86_64-cp-36-cp36m",
    ],
    python_interpreter = "python",
    target_path = "examples/%s/requirements.bzl" % name,
) for name in ("boto", "helloworld", "version")]
