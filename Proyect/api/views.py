from rest_framework.decorators import api_vew
from rest_framework.decorators import response
from rest_framework import status

@api_vew(['POST'])
def main(request):
    return Response(
        {'mesage':'Hola'},
    status=status.HTTP_200_OK
    )