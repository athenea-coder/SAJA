from django.urls import path
from . import views
urlpatterns =  [
    path('index/', views.SajaView, name='index'),
    path('contactUs/', views.SajaContactUs, name='contactUs'),
    path('productos/', views.SajaProductos, name='productos'),
    path('servicios/', views.SajaServicios, name='servicios'),
    path('login/',views.SajaLogin, name='login')
]