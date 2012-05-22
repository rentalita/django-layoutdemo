#!/bin/sh -e

LAYOUTDEMO_HOME="$(dirname $0)"/..
export LAYOUTDEMO_HOME

. "${LAYOUTDEMO_HOME}"/etc/common

"${LAYOUTDEMO_BIN}"/celeryd.sh start
"${LAYOUTDEMO_BIN}"/lighttpd.sh start

exit 0

# Local Variables:
# indent-tabs-mode: nil
# End:
# vim: ai et sw=4 ts=4
