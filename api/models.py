from django.db import models

# Create your models here.

class Student(models.Model):
    name = models.CharField(max_length=100,blank=True,null=True)
    roll = models.IntegerField(unique=True)
    city = models.CharField(max_length=100,unique=True,null=True,blank=True)
    
    class Meta:
        db_table = 'demo_crud'