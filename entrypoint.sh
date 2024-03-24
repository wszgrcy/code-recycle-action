#!/bin/bash
ls -lh
npm i @code-recycle/cli -g
export LANG=$4
code-recycle version

I_PATH=$1
I_CWD=$([ -n "$2" ] && echo -n "--cwd $2" || echo -n "")
I_ROOT=$([ -n "$5" ] && echo -n "--root $5" || echo -n "")
I_CONFIG=$([ -n "$6" ] && echo -n "--config $6" || echo -n "")
I_DRY_RUN=$([ "$3" == "true" ] && echo -n "--dryRun" || echo -n "")
I_DEBUG=$([ "$7" == "true" ] && echo -n "--debug" || echo -n "")

code-recycle ${I_PATH} ${I_CWD} ${I_DRY_RUN} ${I_ROOT} ${I_CONFIG} ${I_DEBUG}
