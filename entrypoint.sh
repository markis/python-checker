#!/usr/bin/env bash

export RUNNER_TEMP=${RUNNER_TEMP:-/tmp}
export GITHUB_WORKSPACE=${GITHUB_WORKSPACE:-/src}
export MYPY_CACHE_DIR="$HOME/.cache/mypy"
export PIP_CACHE_DIR="$HOME/.cache/pip"

mkdir -p "$PIP_CACHE_DIR"
mkdir -p "$MYPY_CACHE_DIR"

cd "${GITHUB_WORKSPACE}"
exec $@
