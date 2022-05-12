from django.db import models

class GraphicsCards(models.Model):
    id_graphics_cards = models.AutoField(primary_key=True, auto_created=True)
    name = models.CharField(max_length=255)
    url = models.CharField(max_length=255)
    price = models.FloatField(max_length=255)
    graphics_chip = models.CharField(max_length=45)




# Create your models here.
