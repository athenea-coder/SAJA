from django.urls import path
from .views import SajaView
urlpatterns =  [
    path('', SajaView, name='Saja')
]