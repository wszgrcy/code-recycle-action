#!/bin/bash
echo $(type sh)
echo $(type bash)
ls -lh
npm i @code-recycle/cli -g
type git
echo $(type git)
echo $(type npm)
echo $(type node)
echo $(type code-recycle)
code-recycle version
code-recycle --help
I_PATH=$1
I_CWD=$([ -n "$2" ] && echo -n "--cwd $2" || echo -n "")
I_DRY_RUN=$([ "$3" == "true" ] && echo -n "--dryRun" || echo -n "")
echo $I_PATH
echo $I_CWD
echo $I_DRY_RUN
COMMAND="code-recycle ${I_PATH} ${I_CWD} ${I_DRY_RUN}"
echo $COMMAND

code-recycle --help
code-recycle ${I_PATH} ${I_CWD} ${I_DRY_RUN}
# ${COMMAND}
