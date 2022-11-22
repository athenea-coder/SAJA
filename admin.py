from django.contrib import admin
from .models import *

# Register your models here.
admin.site.register(Cliente)
admin.site.register(Pagos)
admin.site.register(Compra)
admin.site.register(Producto)
admin.site.register(Factura)
admin.site.register(FacturaDescuento)
admin.site.register(Envios)