#!/bin/sh -e

LAYOUTDEMO_HOME="$(dirname $0)"/..
export LAYOUTDEMO_HOME

. "${LAYOUTDEMO_HOME}"/etc/common

print_usage_and_die()
{
    echo "Usage: $(basename $0) [start | stop | restart]"
    exit 1
}

OPTION="$1"

case "${OPTION}" in
    start)
	    ${ASROOT} lighttpd -f "${LAYOUTDEMO_ETC}"/lighttpd.conf
	;;
    stop)
	    [ -f "${LAYOUTDEMO_RUN}"/lighttpd.pid ] && \
	        ${ASROOT} kill $(cat "${LAYOUTDEMO_RUN}"/lighttpd.pid)
	;;
    restart)
            "$0" stop
            "$0" start
	;;
    *)
	    print_usage_and_die
	;;
esac

exit 0

# Local Variables:
# indent-tabs-mode: nil
# End:
# vim: ai et sw=4 ts=4
