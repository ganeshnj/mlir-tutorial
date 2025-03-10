"""Configure LLVM Bazel overlays from a 'raw' imported llvm repository"""

load("@llvm-raw//utils/bazel:configure.bzl", "llvm_configure")

# The subset of LLVM backend targets that should be compiled
_LLVM_TARGETS = [
    "AArch64",
    "NVPTX",
]

def setup_llvm(name):
    """Build @llvm-project from @llvm-raw using the upstream bazel overlays."""
    llvm_configure(
        name = name,
        targets = _LLVM_TARGETS,
    )