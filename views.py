
from django.http import HttpResponse
from django.shortcuts import render

def SajaView(request):
    return render(request, 'Saja/index.html')
def SajaContactUs(request):
    return render(request, 'Saja/static/nosotros/nosotros.html')
def SajaProductos(request):
    return render(request, 'Saja/static/productos/productos.html') 
def SajaServicios(request):
    return render(request, 'Saja/static/servicios/servicios.html')  
def SajaLogin(request):
    return render(request, 'Saja/static/login/login.html')         

  