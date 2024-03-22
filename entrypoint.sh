#!/bin/sh
echo $(type sh)
echo $(type bash)
ls -lh
npm i @code-recycle/cli -g
code-recycle version
PATH=$1
CWD=$([ -n "$1" ] && echo -n "--cwd $1" || echo -n "")
DRY_RUN=$([ "$3" == "true" ] && echo -n "--dryRun" || echo -n "")
code-recycle $PATH $CWD $DRY_RUN