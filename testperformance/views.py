import time

from rest_framework import status
from rest_framework.views import APIView
from rest_framework.response import Response


class HelloWorldAPI(APIView):
    def get(self, request, *args, **kwargs):
        time.sleep(1)
        return Response({"hello": "World!"}, status=status.HTTP_200_OK)