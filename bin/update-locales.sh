#!/bin/sh

LAYOUTDEMO_HOME="$(dirname $0)"/..
export LAYOUTDEMO_HOME

. "${LAYOUTDEMO_HOME}"/etc/common

LOCALES="es"

for locale in ${LOCALES}; do
    (
        cd "${LAYOUTDEMO_HOME}"
        "${LAYOUTDEMO_BIN}"/django-manage.sh makemessages -l "${locale}" -e .html -e .txt -e .js
        "${LAYOUTDEMO_BIN}"/django-manage.sh compilemessages -l "${locale}"
    )
done

# Local Variables:
# indent-tabs-mode: nil
# End:
# vim: ai et sw=4 ts=4
