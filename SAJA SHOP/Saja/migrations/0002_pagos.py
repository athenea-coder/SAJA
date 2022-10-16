# Generated by Django 4.1.2 on 2022-10-16 20:54

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Saja', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='pagos',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('nombreCliente', models.CharField(max_length=255)),
                ('numTarjeta', models.IntegerField()),
                ('pagoTotal', models.DecimalField(decimal_places=2, max_digits=100)),
            ],
        ),
    ]
