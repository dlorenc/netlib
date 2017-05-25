#!/bin/bash
set -ex

go generate gonum.org/v1/netlib/blas
go generate gonum.org/v1/netlib/lapack/lapacke
if [ -n "$(git diff)" ]; then
	exit 1
fi
