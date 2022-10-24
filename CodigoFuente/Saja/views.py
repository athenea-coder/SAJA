
from django.http import HttpResponse
from django.shortcuts import render

def SajaView(request):
    return render(request, 'Saja/index.html')