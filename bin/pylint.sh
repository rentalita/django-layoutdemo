#!/bin/sh

LAYOUTDEMO_HOME="$(dirname $0)"/..
export LAYOUTDEMO_HOME

. "${LAYOUTDEMO_HOME}"/etc/common

"${LAYOUTDEMO_BIN}"/python.sh "${PYLINT}" ${PYLINTFLAGS} ${LAYOUTDEMO_PYLINTFLAGS} "$@"

# Local Variables:
# indent-tabs-mode: nil
# End:
# vim: ai et sw=4 ts=4
