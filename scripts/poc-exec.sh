#!/usr/bin/env bash
set -u
echo "RCE-FROM-FORK-PR: uid=$(id -un) host=$(hostname)"
echo "dummy_secret_len=${#POC_DUMMY} dummy_secret_sha256=$(printf '%s' "${POC_DUMMY:-}" | sha256sum | cut -d' ' -f1)"
echo "oidc_url_set=${ACTIONS_ID_TOKEN_REQUEST_URL:+yes}"
echo "ref=${GITHUB_REF} sha=${GITHUB_SHA}"
