#!/bin/sh

LAYOUTDEMO_TESTS=1
export LAYOUTDEMO_TESTS

LAYOUTDEMO_HOME="$(dirname $0)"
. "${LAYOUTDEMO_HOME}"/etc/common

cd "${LAYOUTDEMO_HOME}"

"${LAYOUTDEMO_BIN}"/django-migrate.sh

"${LAYOUTDEMO_BIN}"/nosetests.sh "$@"
[ $? != 0 ] && echo "ERROR!!!" && exit 1

exit 0

# Local Variables:
# indent-tabs-mode: nil
# End:
# vim: ai et sw=4 ts=4
