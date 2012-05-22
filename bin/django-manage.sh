#!/bin/sh -e

LAYOUTDEMO_HOME="$(dirname $0)"/..
export LAYOUTDEMO_HOME

. "${LAYOUTDEMO_HOME}"/etc/common

TARGET="$@"
TARGET="${TARGET:-help}"

"${LAYOUTDEMO_BIN}"/python.sh "${LAYOUTDEMO_BIN}"/django-manage.py ${TARGET} --settings="${DJANGO_SETTINGS_MODULE}" -v 0

exit 0

# Local Variables:
# indent-tabs-mode: nil
# End:
# vim: ai et sw=4 ts=4
