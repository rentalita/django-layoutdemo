#!/bin/sh

LAYOUTDEMO_TESTS=
export LAYOUTDEMO_TESTS

LAYOUTDEMO_HOME="$(dirname $0)"
. "${LAYOUTDEMO_HOME}"/etc/common

cd "${LAYOUTDEMO_HOME}"

TARGET="$@"
TARGET="${TARGET:-develop}"

"${LAYOUTDEMO_BIN}"/python.sh setup.py -q ${TARGET}
[ $? != 0 ] && echo "ERROR!!!" && exit 1

"${LAYOUTDEMO_BIN}"/django-migrate.sh
"${LAYOUTDEMO_BIN}"/django-load.sh

exit 0

# Local Variables:
# indent-tabs-mode: nil
# End:
# vim: ai et sw=4 ts=4
