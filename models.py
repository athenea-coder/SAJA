from http.client import PRECONDITION_FAILED
from mailbox import NoSuchMailboxError
from django.db import models

# Create your models here.
class cliente(models.Model):
    nombreCliente = models.CharField(max_length=255 )
    email = models.EmailField()
    telefono = models.IntegerField()
    direccion = models.CharField(max_length=255)

class pagos(models.Model): 
    nombreCliente = models.CharField(max_length=255 )
    numTarjeta = models.IntegerField()
    pagoTotal = models.DecimalField(max_digits = 100, decimal_places = 2)

class compra(models.Model):
    nombreCliente = models.CharField(max_length=255 )  
    idProducto = models.IntegerField()
    fecha = models.DateField()
    pagoTotal = models.DecimalField(max_digits = 100, decimal_places = 2)    

class producto(models.Model):
    nombre = models.CharField(max_length=255 )
    cantidadStock = models.IntegerField()
    precio = models.DecimalField(max_digits = 100, decimal_places = 2)
    imagen = models.ImageField()
    descripcion = models.CharField(max_length=500 )  

class factura(models.Model):
    idCompra = models.IntegerField()   
    nombreCliente = models.CharField(max_length=255 ) 
    idCliente = models.IntegerField()  
    telefono = models.IntegerField()
    direccion = models.CharField(max_length=255)
    idProducto = models.IntegerField()
    pagoTotal = models.DecimalField(max_digits = 100, decimal_places = 2) 

class facturaDescuento(models.Model):
    idCompra = models.IntegerField()   
    idProducto = models.IntegerField()
    cantidad = models.IntegerField()
    pagoTotal = models.DecimalField(max_digits = 100, decimal_places = 2) 
    descuento =  models.DecimalField(max_digits = 100, decimal_places = 2) 

class envios(models.Model):
    nombreCliente = models.CharField(max_length=255 )      
    telefono = models.IntegerField()
    direccion = models.CharField(max_length=255)
    fechaEnvio = models.DateField()
    compañia = models.CharField(max_length=255 )           