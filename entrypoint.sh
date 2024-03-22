#!/bin/bash
ls -lh
npm i @code-recycle/cli -g
export LANG="en"
code-recycle --help
code-recycle version

I_PATH=$1
I_CWD=$([ -n "$2" ] && echo -n "--cwd $2" || echo -n "")
I_DRY_RUN=$([ "$3" == "true" ] && echo -n "--dryRun" || echo -n "")

code-recycle ${I_PATH} ${I_CWD} ${I_DRY_RUN}
