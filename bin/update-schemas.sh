#!/bin/sh

LAYOUTDEMO_HOME="$(dirname $0)"/..
export LAYOUTDEMO_HOME

. "${LAYOUTDEMO_HOME}"/etc/common

"${LAYOUTDEMO_BIN}"/django-manage.sh schemamigration layoutdemo --auto

# Local Variables:
# indent-tabs-mode: nil
# End:
# vim: ai et sw=4 ts=4
