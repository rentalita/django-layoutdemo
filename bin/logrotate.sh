#!/bin/sh -e

LAYOUTDEMO_HOME="$(dirname $0)"/..
export LAYOUTDEMO_HOME

. "${LAYOUTDEMO_HOME}"/etc/common

${ASROOT} logrotate --state "${LAYOUTDEMO_RUN}"/logrotate.state \
    "${LAYOUTDEMO_ETC}"/logrotate.conf "$@"

exit 0

# Local Variables:
# indent-tabs-mode: nil
# End:
# vim: ai et sw=4 ts=4
