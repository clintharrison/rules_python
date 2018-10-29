#!/usr/bin/env bash

PEX_GENERATE_DEPS="{{PEX_GENERATE_DEPS_EXE}}"
ARGS={{ARGS}}
OUTPUT_PATH="{{OUTPUT_PATH}}"

exe=$(readlink "${PEX_GENERATE_DEPS}")

cd "${BUILD_WORKSPACE_DIRECTORY}"
export PEX_VERBOSE="{{VERBOSITY}}"
generated_bzl=$("$exe" "${ARGS[@]}")
generator_ec=$?

if [[ ${generator_ec} -ne 0 ]]; then
    echo "pex_generate_deps failed with exit code ${generator_ec}! requirements.bzl was not updated."
    exit ${generator_ec}
fi

if [[ -n "${OUTPUT_PATH}" ]]; then
    echo ""
    echo "writing output to ${OUTPUT_PATH}..."
    echo "${generated_bzl}" >"${OUTPUT_PATH}"
    echo "...done!"
fi
