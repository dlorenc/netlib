set -ex

# This script contains common installation commands for linux.  It should be run
# prior to more specific installation commands for a particular blas library.
go get golang.org/x/tools/cmd/cover
go get github.com/mattn/goveralls

# Repositories for code generation.
go get modernc.org/cc

# travis compiles commands in script and then executes in bash.  By adding
# set -e we are changing the travis build script's behavior, and the set
# -e lives on past the commands we are providing it.  Some of the travis
# commands are supposed to exit with non zero status, but then continue
# executing.  set -x makes the travis log files extremely verbose and
# difficult to understand.
# 
# see travis-ci/travis-ci#5120
set +ex
