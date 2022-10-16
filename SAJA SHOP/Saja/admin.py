from django.contrib import admin
from .models import cliente
from .models import pagos
from .models import compra
from .models import producto
from .models import factura
from .models import facturaDescuento
from .models import envios

# Register your models here.
admin.site.register(cliente)
admin.site.register(pagos)
admin.site.register(compra)
admin.site.register(producto)
admin.site.register(factura)
admin.site.register(facturaDescuento)
admin.site.register(envios)