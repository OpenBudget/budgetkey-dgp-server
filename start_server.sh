#!/bin/sh
gunicorn -w 4 -t 180 --bind 0.0.0.0:8000 server.server:app --worker-class aiohttp.GunicornWebWorker