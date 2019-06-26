from .base import *

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql_psycopg2',
        'NAME': os.environ.get('DATABASE_NAME', 'djtrump'),
        'USER': 'djtrumpuser',
        'PASSWORD': 'password',
        'PORT': '5432',
        'HOST': 'postgres'
    }
}
