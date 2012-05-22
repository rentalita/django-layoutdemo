#!/bin/sh

LAYOUTDEMO_HOME="$(dirname $0)"/..
export LAYOUTDEMO_HOME

. "${LAYOUTDEMO_HOME}"/etc/common

FILENAME="$1"

if [ "${FILENAME}" = "" ]; then
    FILENAME="${LAYOUTDEMO_DATA}"/django-load.json
fi

"${LAYOUTDEMO_BIN}"/django-manage.sh dumpdata --natural | "${LAYOUTDEMO_BIN}"/python.sh -mjson.tool > "${FILENAME}"

# Local Variables:
# indent-tabs-mode: nil
# End:
# vim: ai et sw=4 ts=4
