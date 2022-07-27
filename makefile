daphne:
	daphne testperformance.asgi:application
gunicorn:
	gunicorn testperformance.wsgi --workers=200
uvicorn:
	gunicorn testperformance.asgi:application -k uvicorn.workers.UvicornWorker --workers=200

test-req:
	hey -n 1000 http://127.0.0.1:8000/

test-req-con:
	hey -n 1000 -c 200 http://127.0.0.1:8000/