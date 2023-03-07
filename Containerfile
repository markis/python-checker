FROM python:3-slim as base
LABEL maintainer="Markis Taylor <m@rkis.net>"
ENTRYPOINT ["/entrypoint.sh"]
ARG BLACK_VERSION="22.3.0" \
    INVOKE_VERSION="2.0.0" \
    MYPY_VERSION="1.0.1" \
    RUFF_VERSION="0.0.254"
ENV PIP_ROOT_USER_ACTION=ignore \
    PIP_DISABLE_PIP_VERSION_CHECK=1

COPY entrypoint.sh /entrypoint.sh
COPY pyproject.toml /src
RUN pip install --no-cache-dir \
    black=="${BLACK_VERSION}" \
    mypy=="${MYPY_VERSION}" \
    ruff=="${RUFF_VERSION}"
