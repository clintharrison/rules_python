load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_file")
load("@rules_python//python:whl.bzl", "whl_library")

def pip_install():

  if "pypi__asn1crypto_0_24_0__py2_py3_any" not in native.existing_rules():
    http_file(
        name = "whl__asn1crypto_0_24_0__py2_py3_any",
        urls = ["https://files.pythonhosted.org/packages/ea/cd/35485615f45f30a510576f1a56d1e0a7ad7bd8ab5ed7cdc600ef7cd06222/asn1crypto-0.24.0-py2.py3-none-any.whl"],
        sha256 = "2f1adbb7546ed199e3c90ef23ec95c5cf3585bac7d11fb7eb562a3fe89c64e87",
        downloaded_file_path = "asn1crypto-0.24.0-py2.py3-none-any.whl",
    )

    whl_library(
        name = "pypi__asn1crypto_0_24_0__py2_py3_any",
        whl = "@whl__asn1crypto_0_24_0__py2_py3_any//file:asn1crypto-0.24.0-py2.py3-none-any.whl",
        requirements = "@rules_python//resolver:requirements.bzl",
        extras = [],
        python_interpreter = "python3",
    )

  if "pypi__certifi_2018_10_15__py2_py3_any" not in native.existing_rules():
    http_file(
        name = "whl__certifi_2018_10_15__py2_py3_any",
        urls = ["https://files.pythonhosted.org/packages/56/9d/1d02dd80bc4cd955f98980f28c5ee2200e1209292d5f9e9cc8d030d18655/certifi-2018.10.15-py2.py3-none-any.whl#sha256=339dc09518b07e2fa7eda5450740925974815557727d6bd35d319c1524a04a4c"],
        sha256 = "339dc09518b07e2fa7eda5450740925974815557727d6bd35d319c1524a04a4c",
        downloaded_file_path = "certifi-2018.10.15-py2.py3-none-any.whl",
    )

    whl_library(
        name = "pypi__certifi_2018_10_15__py2_py3_any",
        whl = "@whl__certifi_2018_10_15__py2_py3_any//file:certifi-2018.10.15-py2.py3-none-any.whl",
        requirements = "@rules_python//resolver:requirements.bzl",
        extras = [],
        python_interpreter = "python3",
    )

  if "pypi__cffi_1_11_5__cp27_linux" not in native.existing_rules():
    http_file(
        name = "whl__cffi_1_11_5__cp27_linux",
        urls = ["https://files.pythonhosted.org/packages/14/dd/3e7a1e1280e7d767bd3fa15791759c91ec19058ebe31217fe66f3e9a8c49/cffi-1.11.5-cp27-cp27mu-manylinux1_x86_64.whl#sha256=edabd457cd23a02965166026fd9bfd196f4324fe6032e866d0f3bd0301cd486f"],
        sha256 = "edabd457cd23a02965166026fd9bfd196f4324fe6032e866d0f3bd0301cd486f",
        downloaded_file_path = "cffi-1.11.5-cp27-cp27mu-manylinux1_x86_64.whl",
    )

    whl_library(
        name = "pypi__cffi_1_11_5__cp27_linux",
        whl = "@whl__cffi_1_11_5__cp27_linux//file:cffi-1.11.5-cp27-cp27mu-manylinux1_x86_64.whl",
        requirements = "@rules_python//resolver:requirements.bzl",
        extras = [],
        python_interpreter = "python3",
    )

  if "pypi__cffi_1_11_5__cp27_osx" not in native.existing_rules():
    http_file(
        name = "whl__cffi_1_11_5__cp27_osx",
        urls = ["https://files.pythonhosted.org/packages/7e/4a/b647e46faaa2dcfb16069b6aad2d8509982fd63710a325b8ad7db80f18be/cffi-1.11.5-cp27-cp27m-macosx_10_6_intel.whl#sha256=1b0493c091a1898f1136e3f4f991a784437fac3673780ff9de3bcf46c80b6b50"],
        sha256 = "1b0493c091a1898f1136e3f4f991a784437fac3673780ff9de3bcf46c80b6b50",
        downloaded_file_path = "cffi-1.11.5-cp27-cp27m-macosx_10_6_intel.whl",
    )

    whl_library(
        name = "pypi__cffi_1_11_5__cp27_osx",
        whl = "@whl__cffi_1_11_5__cp27_osx//file:cffi-1.11.5-cp27-cp27m-macosx_10_6_intel.whl",
        requirements = "@rules_python//resolver:requirements.bzl",
        extras = [],
        python_interpreter = "python3",
    )

  if "pypi__chardet_3_0_4__py2_py3_any" not in native.existing_rules():
    http_file(
        name = "whl__chardet_3_0_4__py2_py3_any",
        urls = ["https://files.pythonhosted.org/packages/bc/a9/01ffebfb562e4274b6487b4bb1ddec7ca55ec7510b22e4c51f14098443b8/chardet-3.0.4-py2.py3-none-any.whl#sha256=fc323ffcaeaed0e0a02bf4d117757b98aed530d9ed4531e3e15460124c106691"],
        sha256 = "fc323ffcaeaed0e0a02bf4d117757b98aed530d9ed4531e3e15460124c106691",
        downloaded_file_path = "chardet-3.0.4-py2.py3-none-any.whl",
    )

    whl_library(
        name = "pypi__chardet_3_0_4__py2_py3_any",
        whl = "@whl__chardet_3_0_4__py2_py3_any//file:chardet-3.0.4-py2.py3-none-any.whl",
        requirements = "@rules_python//resolver:requirements.bzl",
        extras = [],
        python_interpreter = "python3",
    )

  if "pypi__cryptography_2_3_1__cp27_osx" not in native.existing_rules():
    http_file(
        name = "whl__cryptography_2_3_1__cp27_osx",
        urls = ["https://files.pythonhosted.org/packages/5d/b1/9863611b121ee524135bc0068533e6d238cc837337170e722224fe940e2d/cryptography-2.3.1-cp27-cp27m-macosx_10_6_intel.whl#sha256=17db09db9d7c5de130023657be42689d1a5f60502a14f6f745f6f65a6b8195c0"],
        sha256 = "17db09db9d7c5de130023657be42689d1a5f60502a14f6f745f6f65a6b8195c0",
        downloaded_file_path = "cryptography-2.3.1-cp27-cp27m-macosx_10_6_intel.whl",
    )

    whl_library(
        name = "pypi__cryptography_2_3_1__cp27_osx",
        whl = "@whl__cryptography_2_3_1__cp27_osx//file:cryptography-2.3.1-cp27-cp27m-macosx_10_6_intel.whl",
        requirements = "@rules_python//resolver:requirements.bzl",
        extras = [],
        python_interpreter = "python3",
    )

  if "pypi__cryptography_2_3_1__cp27_linux" not in native.existing_rules():
    http_file(
        name = "whl__cryptography_2_3_1__cp27_linux",
        urls = ["https://files.pythonhosted.org/packages/87/e6/915a482dbfef98bbdce6be1e31825f591fc67038d4ee09864c1d2c3db371/cryptography-2.3.1-cp27-cp27mu-manylinux1_x86_64.whl#sha256=31db8febfc768e4b4bd826750a70c79c99ea423f4697d1dab764eb9f9f849519"],
        sha256 = "31db8febfc768e4b4bd826750a70c79c99ea423f4697d1dab764eb9f9f849519",
        downloaded_file_path = "cryptography-2.3.1-cp27-cp27mu-manylinux1_x86_64.whl",
    )

    whl_library(
        name = "pypi__cryptography_2_3_1__cp27_linux",
        whl = "@whl__cryptography_2_3_1__cp27_linux//file:cryptography-2.3.1-cp27-cp27mu-manylinux1_x86_64.whl",
        requirements = "@rules_python//resolver:requirements.bzl",
        extras = [],
        python_interpreter = "python3",
    )

  if "pypi__idna_2_6__py2_py3_any" not in native.existing_rules():
    http_file(
        name = "whl__idna_2_6__py2_py3_any",
        urls = ["https://files.pythonhosted.org/packages/27/cc/6dd9a3869f15c2edfab863b992838277279ce92663d334df9ecf5106f5c6/idna-2.6-py2.py3-none-any.whl"],
        sha256 = "8c7309c718f94b3a625cb648ace320157ad16ff131ae0af362c9f21b80ef6ec4",
        downloaded_file_path = "idna-2.6-py2.py3-none-any.whl",
    )

    whl_library(
        name = "pypi__idna_2_6__py2_py3_any",
        whl = "@whl__idna_2_6__py2_py3_any//file:idna-2.6-py2.py3-none-any.whl",
        requirements = "@rules_python//resolver:requirements.bzl",
        extras = [],
        python_interpreter = "python3",
    )

  if "pypi__ipaddress_1_0_22__py2_py3_any" not in native.existing_rules():
    http_file(
        name = "whl__ipaddress_1_0_22__py2_py3_any",
        urls = ["https://files.pythonhosted.org/packages/fc/d0/7fc3a811e011d4b388be48a0e381db8d990042df54aa4ef4599a31d39853/ipaddress-1.0.22-py2.py3-none-any.whl#sha256=64b28eec5e78e7510698f6d4da08800a5c575caa4a286c93d651c5d3ff7b6794"],
        sha256 = "64b28eec5e78e7510698f6d4da08800a5c575caa4a286c93d651c5d3ff7b6794",
        downloaded_file_path = "ipaddress-1.0.22-py2.py3-none-any.whl",
    )

    whl_library(
        name = "pypi__ipaddress_1_0_22__py2_py3_any",
        whl = "@whl__ipaddress_1_0_22__py2_py3_any//file:ipaddress-1.0.22-py2.py3-none-any.whl",
        requirements = "@rules_python//resolver:requirements.bzl",
        extras = [],
        python_interpreter = "python3",
    )

  if "pypi__pex_1_5_2__py2_py3_any" not in native.existing_rules():
    http_file(
        name = "whl__pex_1_5_2__py2_py3_any",
        urls = ["https://files.pythonhosted.org/packages/21/46/6e553d83f12cd200735902b4a83aadc04706101473a9d2b2d464c698e625/pex-1.5.2-py2.py3-none-any.whl#sha256=6e72c7fb480469713f8df827f8bfcbe5fac74606b7bea930f1be490d9822b54f"],
        sha256 = "6e72c7fb480469713f8df827f8bfcbe5fac74606b7bea930f1be490d9822b54f",
        downloaded_file_path = "pex-1.5.2-py2.py3-none-any.whl",
    )

    whl_library(
        name = "pypi__pex_1_5_2__py2_py3_any",
        whl = "@whl__pex_1_5_2__py2_py3_any//file:pex-1.5.2-py2.py3-none-any.whl",
        requirements = "@rules_python//resolver:requirements.bzl",
        extras = ["requests","subprocess"],
        python_interpreter = "python3",
    )

  if "pypi__pycparser_2_18__py2_py3_any" not in native.existing_rules():
    http_file(
        name = "whl__pycparser_2_18__py2_py3_any",
        urls = ["https://www.piwheels.org/simple/pycparser/pycparser-2.18-py2.py3-none-any.whl"],
        sha256 = "2b98f21d3022d43b77e31a49f58234cadd243e8f75bd72f7b2ee312bb70459da",
        downloaded_file_path = "pycparser-2.18-py2.py3-none-any.whl",
    )

    whl_library(
        name = "pypi__pycparser_2_18__py2_py3_any",
        whl = "@whl__pycparser_2_18__py2_py3_any//file:pycparser-2.18-py2.py3-none-any.whl",
        requirements = "@rules_python//resolver:requirements.bzl",
        extras = [],
        python_interpreter = "python3",
    )

  if "pypi__pyOpenSSL_18_0_0__py2_py3_any" not in native.existing_rules():
    http_file(
        name = "whl__pyOpenSSL_18_0_0__py2_py3_any",
        urls = ["https://files.pythonhosted.org/packages/96/af/9d29e6bd40823061aea2e0574ccb2fcf72bfd6130ce53d32773ec375458c/pyOpenSSL-18.0.0-py2.py3-none-any.whl#sha256=26ff56a6b5ecaf3a2a59f132681e2a80afcc76b4f902f612f518f92c2a1bf854"],
        sha256 = "26ff56a6b5ecaf3a2a59f132681e2a80afcc76b4f902f612f518f92c2a1bf854",
        downloaded_file_path = "pyOpenSSL-18.0.0-py2.py3-none-any.whl",
    )

    whl_library(
        name = "pypi__pyOpenSSL_18_0_0__py2_py3_any",
        whl = "@whl__pyOpenSSL_18_0_0__py2_py3_any//file:pyOpenSSL-18.0.0-py2.py3-none-any.whl",
        requirements = "@rules_python//resolver:requirements.bzl",
        extras = [],
        python_interpreter = "python3",
    )

  if "pypi__requests_2_18_4__py2_py3_any" not in native.existing_rules():
    http_file(
        name = "whl__requests_2_18_4__py2_py3_any",
        urls = ["https://files.pythonhosted.org/packages/49/df/50aa1999ab9bde74656c2919d9c0c085fd2b3775fd3eca826012bef76d8c/requests-2.18.4-py2.py3-none-any.whl"],
        sha256 = "6a1b267aa90cac58ac3a765d067950e7dbbf75b1da07e895d1f594193a40a38b",
        downloaded_file_path = "requests-2.18.4-py2.py3-none-any.whl",
    )

    whl_library(
        name = "pypi__requests_2_18_4__py2_py3_any",
        whl = "@whl__requests_2_18_4__py2_py3_any//file:requests-2.18.4-py2.py3-none-any.whl",
        requirements = "@rules_python//resolver:requirements.bzl",
        extras = ["security"],
        python_interpreter = "python3",
    )

  if "pypi__setuptools_40_5_0__py2_py3_any" not in native.existing_rules():
    http_file(
        name = "whl__setuptools_40_5_0__py2_py3_any",
        urls = ["https://files.pythonhosted.org/packages/82/a1/ba6fb41367b375f5cb653d1317d8ca263c636cff6566e2da1b0da716069d/setuptools-40.5.0-py2.py3-none-any.whl#sha256=e329a5c458c6acb5edc2b5c4ad44280c053ba827dc82fd5e84a83e22bb05460d"],
        sha256 = "e329a5c458c6acb5edc2b5c4ad44280c053ba827dc82fd5e84a83e22bb05460d",
        downloaded_file_path = "setuptools-40.5.0-py2.py3-none-any.whl",
    )

    whl_library(
        name = "pypi__setuptools_40_5_0__py2_py3_any",
        whl = "@whl__setuptools_40_5_0__py2_py3_any//file:setuptools-40.5.0-py2.py3-none-any.whl",
        requirements = "@rules_python//resolver:requirements.bzl",
        extras = ["ssl","certs"],
        python_interpreter = "python3",
    )

  if "pypi__six_1_11_0__py2_py3_any" not in native.existing_rules():
    http_file(
        name = "whl__six_1_11_0__py2_py3_any",
        urls = ["https://files.pythonhosted.org/packages/67/4b/141a581104b1f6397bfa78ac9d43d8ad29a7ca43ea90a2d863fe3056e86a/six-1.11.0-py2.py3-none-any.whl"],
        sha256 = "832dc0e10feb1aa2c68dcc57dbb658f1c7e65b9b61af69048abc87a2db00a0eb",
        downloaded_file_path = "six-1.11.0-py2.py3-none-any.whl",
    )

    whl_library(
        name = "pypi__six_1_11_0__py2_py3_any",
        whl = "@whl__six_1_11_0__py2_py3_any//file:six-1.11.0-py2.py3-none-any.whl",
        requirements = "@rules_python//resolver:requirements.bzl",
        extras = [],
        python_interpreter = "python3",
    )

  if "pypi__subprocess32_3_5_3__cp27_osx" not in native.existing_rules():
    http_file(
        name = "whl__subprocess32_3_5_3__cp27_osx",
        urls = ["https://files.pythonhosted.org/packages/1f/b5/dcb236f263f61cdaac6dad65df42bbff91f66ef90854ae1a96ad4c8dd654/subprocess32-3.5.3-cp27-cp27m-macosx_10_6_intel.whl#sha256=24a7f627ef7a5695138601b665057ad131fa26e80d49d5ffa6b4fdb2357a80d3"],
        sha256 = "24a7f627ef7a5695138601b665057ad131fa26e80d49d5ffa6b4fdb2357a80d3",
        downloaded_file_path = "subprocess32-3.5.3-cp27-cp27m-macosx_10_6_intel.whl",
    )

    whl_library(
        name = "pypi__subprocess32_3_5_3__cp27_osx",
        whl = "@whl__subprocess32_3_5_3__cp27_osx//file:subprocess32-3.5.3-cp27-cp27m-macosx_10_6_intel.whl",
        requirements = "@rules_python//resolver:requirements.bzl",
        extras = [],
        python_interpreter = "python3",
    )

  if "pypi__subprocess32_3_2_5__cp27_linux" not in native.existing_rules():
    http_file(
        name = "whl__subprocess32_3_2_5__cp27_linux",
        urls = ["https://REDACTED/subprocess32-3.2.5-cp27-cp27mu-linux_x86_64.whl"],
        sha256 = "a852c7a059cea1a3c2a34172e8b40a43213ce3724fab9037ffef5ca827f98d94",
        downloaded_file_path = "subprocess32-3.2.5-cp27-cp27mu-linux_x86_64.whl",
    )

    whl_library(
        name = "pypi__subprocess32_3_2_5__cp27_linux",
        whl = "@whl__subprocess32_3_2_5__cp27_linux//file:subprocess32-3.2.5-cp27-cp27mu-linux_x86_64.whl",
        requirements = "@rules_python//resolver:requirements.bzl",
        extras = [],
        python_interpreter = "python3",
    )

  if "pypi__urllib3_1_22__py2_py3_any" not in native.existing_rules():
    http_file(
        name = "whl__urllib3_1_22__py2_py3_any",
        urls = ["https://files.pythonhosted.org/packages/63/cb/6965947c13a94236f6d4b8223e21beb4d576dc72e8130bd7880f600839b8/urllib3-1.22-py2.py3-none-any.whl#sha256=06330f386d6e4b195fbfc736b297f58c5a892e4440e54d294d7004e3a9bbea1b"],
        sha256 = "06330f386d6e4b195fbfc736b297f58c5a892e4440e54d294d7004e3a9bbea1b",
        downloaded_file_path = "urllib3-1.22-py2.py3-none-any.whl",
    )

    whl_library(
        name = "pypi__urllib3_1_22__py2_py3_any",
        whl = "@whl__urllib3_1_22__py2_py3_any//file:urllib3-1.22-py2.py3-none-any.whl",
        requirements = "@rules_python//resolver:requirements.bzl",
        extras = ["secure"],
        python_interpreter = "python3",
    )

  if "pypi__wheel_0_31_1__py2_py3_any" not in native.existing_rules():
    http_file(
        name = "whl__wheel_0_31_1__py2_py3_any",
        urls = ["https://files.pythonhosted.org/packages/81/30/e935244ca6165187ae8be876b6316ae201b71485538ffac1d718843025a9/wheel-0.31.1-py2.py3-none-any.whl#sha256=80044e51ec5bbf6c894ba0bc48d26a8c20a9ba629f4ca19ea26ecfcf87685f5f"],
        sha256 = "80044e51ec5bbf6c894ba0bc48d26a8c20a9ba629f4ca19ea26ecfcf87685f5f",
        downloaded_file_path = "wheel-0.31.1-py2.py3-none-any.whl",
    )

    whl_library(
        name = "pypi__wheel_0_31_1__py2_py3_any",
        whl = "@whl__wheel_0_31_1__py2_py3_any//file:wheel-0.31.1-py2.py3-none-any.whl",
        requirements = "@rules_python//resolver:requirements.bzl",
        extras = [],
        python_interpreter = "python3",
    )

_requirements = {
  "asn1crypto": ["@pypi__asn1crypto_0_24_0__py2_py3_any//:pkg"],
  "certifi": ["@pypi__certifi_2018_10_15__py2_py3_any//:pkg"],
  "cffi": select({
    "@rules_python//platforms:osx_x86_64": ["@pypi__cffi_1_11_5__cp27_osx//:pkg"],
    "@rules_python//platforms:linux_x86_64": ["@pypi__cffi_1_11_5__cp27_linux//:pkg"],
  }),
  "chardet": ["@pypi__chardet_3_0_4__py2_py3_any//:pkg"],
  "cryptography": select({
    "@rules_python//platforms:osx_x86_64": ["@pypi__cryptography_2_3_1__cp27_osx//:pkg"],
    "@rules_python//platforms:linux_x86_64": ["@pypi__cryptography_2_3_1__cp27_linux//:pkg"],
  }),
  "enum34": ["@pypi__enum34_1_1_6__py2_any//:pkg"],
  "idna": ["@pypi__idna_2_6__py2_py3_any//:pkg"],
  "ipaddress": ["@pypi__ipaddress_1_0_22__py2_py3_any//:pkg"],
  "pex": ["@pypi__pex_1_5_2__py2_py3_any//:pkg"],
  "pex[requests]": ["@pypi__pex_1_5_2__py2_py3_any//:requests"],
  "pex[subprocess]": ["@pypi__pex_1_5_2__py2_py3_any//:subprocess"],
  "pycparser": ["@pypi__pycparser_2_18__py2_py3_any//:pkg"],
  "pyopenssl": ["@pypi__pyOpenSSL_18_0_0__py2_py3_any//:pkg"],
  "requests": ["@pypi__requests_2_18_4__py2_py3_any//:pkg"],
  "requests[security]": ["@pypi__requests_2_18_4__py2_py3_any//:security"],
  "setuptools": ["@pypi__setuptools_40_5_0__py2_py3_any//:pkg"],
  "setuptools[certs]": ["@pypi__setuptools_40_5_0__py2_py3_any//:certs"],
  "setuptools[ssl]": ["@pypi__setuptools_40_5_0__py2_py3_any//:ssl"],
  "six": ["@pypi__six_1_11_0__py2_py3_any//:pkg"],
  "subprocess32": select({
    "@rules_python//platforms:osx_x86_64": ["@pypi__subprocess32_3_5_3__cp27_osx//:pkg"],
    "@rules_python//platforms:linux_x86_64": ["@pypi__subprocess32_3_2_5__cp27_linux//:pkg"],
  }),
  "urllib3": ["@pypi__urllib3_1_22__py2_py3_any//:pkg"],
  "urllib3[secure]": ["@pypi__urllib3_1_22__py2_py3_any//:secure"],
  "wheel": ["@pypi__wheel_0_31_1__py2_py3_any//:pkg"]
}

all_requirements = _requirements.values()

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

