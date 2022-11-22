from http.client import PRECONDITION_FAILED
from mailbox import NoSuchMailboxError
from django.db import models

# Create your models here.
class Cliente(models.Model):
    nombreCliente = models.CharField(max_length=255 )
    email = models.EmailField()
    telefono = models.IntegerField()
    direccion = models.CharField(max_length=255)

class Producto(models.Model):
    nombre = models.CharField(max_length=255 )
    Stock = models.IntegerField()
    precio = models.DecimalField(max_digits = 100, decimal_places = 2)
    imagen = models.ImageField()
    descripcion = models.CharField(max_length=500 )      

class Envios(models.Model):
    nombreCliente = models.CharField(max_length=255 )      
    telefono = models.IntegerField()
    direccion = models.CharField(max_length=255)
    fechaEnvio = models.DateField()
    fecha_Llegada = models.DateField()
    empresa = models.CharField(max_length=255 ) 

class Compra(models.Model):
    fecha_Compra = models.DateField()
    Precio_Total = models.DecimalField(max_digits = 100, decimal_places = 2)    
    id_cliente = models.ForeignKey(Cliente,on_delete=models.CASCADE)
    id_producto = models.ManyToManyField(Producto)
    id_envios = models.ManyToManyField(Envios)  

class FacturaDescuento(models.Model):
    descuento = models.CharField(max_length=3)

class Factura(models.Model):
    id_Compra = models.ForeignKey(Compra, on_delete=models.CASCADE)      

class Pagos(models.Model): 
    nombreCliente = models.CharField(max_length=255 )
    numTarjeta = models.IntegerField()
    pagoTotal = models.DecimalField(max_digits = 100, decimal_places = 2)
    id_Compra = models.ForeignKey( Compra ,on_delete=models.CASCADE)            