# Generated by Django 4.1.2 on 2022-10-16 21:27

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Saja', '0006_facturadescuento'),
    ]

    operations = [
        migrations.CreateModel(
            name='envios',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombreCliente', models.CharField(max_length=255)),
                ('telefono', models.IntegerField()),
                ('direccion', models.CharField(max_length=255)),
                ('fechaEnvio', models.DateField()),
                ('compañia', models.CharField(max_length=255)),
            ],
        ),
    ]
