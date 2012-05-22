#!/bin/sh

LAYOUTDEMO_HOME="$(dirname $0)"/..
export LAYOUTDEMO_HOME

. "${LAYOUTDEMO_HOME}"/etc/common

sqlite3 ${LAYOUTDEMO_SQLITE3FLAGS} "$@"

# Local Variables:
# indent-tabs-mode: nil
# End:
# vim: ai et sw=4 ts=4
