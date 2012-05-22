# -*- coding: utf-8 -*-

from layoutdemo.default.settings import *

import os

DEBUG = True
TEMPLATE_DEBUG = DEBUG

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.sqlite3',
        'NAME': os.environ['LAYOUTDEMO_DB'] + os.sep + 'tests.db',
    }
}

ROOT_URLCONF = 'layoutdemo.default.tests.urls'

# Local Variables:
# indent-tabs-mode: nil
# End:
# vim: ai et sw=4 ts=4
