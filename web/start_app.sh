#/bin/bash

sleep 10

/usr/local/bin/python create_db.py

sleep 5

exec /usr/local/bin/gunicorn -w 2 -b :8000 app:app
