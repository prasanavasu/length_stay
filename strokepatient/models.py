from django.db import models

# Create your models here.
class register_form(models.Model):
    username = models.CharField(max_length=200)
    email = models.EmailField()
    password = models.CharField(max_length=50)
    phone = models.CharField(max_length=20)
    nat  = models.CharField(max_length=20)
    ste = models.CharField(max_length=10)
    age = models.IntegerField(max_length=10)
    img = models.ImageField(upload_to="image")

class sendreport(models.Model):
    date0 = models.CharField(max_length=100)
    level = models.CharField(max_length=200)
    gname = models.CharField(max_length=200)
    dname = models.CharField(max_length=200)
    emer = models.CharField(max_length=20)
    date1 = models.CharField(max_length=200)
    value=models.CharField(max_length=10)

class combine (models.Model):
    username = models.CharField(max_length=200)
    email = models.EmailField()
    password = models.CharField(max_length=50)
    phone = models.CharField(max_length=20)
    nat  = models.CharField(max_length=20)
    ste = models.CharField(max_length=10)
    age = models.IntegerField(max_length=10)
    img = models.ImageField(upload_to="image")
    date0 = models.CharField(max_length=100)
    level = models.CharField(max_length=200)
    gname = models.CharField(max_length=200)
    dname = models.CharField(max_length=200)
    emer = models.CharField(max_length=20)
    date1 = models.CharField(max_length=200)
    value=models.CharField(max_length=10)

class iicu(models.Model):
    pname = models.CharField(max_length=50)
    seatno = models.CharField(max_length=50)
    date01 = models.CharField(max_length=50)
    date1 = models.CharField(max_length=50)
    time01 = models.CharField(max_length=50) 
    time1 = models.CharField(max_length=50) 
    emer = models.CharField(max_length=50)
    level = models.CharField(max_length=50)
    status = models.CharField(max_length=50)

class icuroom(models.Model):
    pname = models.CharField(max_length=50)
    seatno = models.CharField(max_length=50)
    date01 = models.CharField(max_length=50)
    date1 = models.CharField(max_length=50)
    time01 = models.CharField(max_length=50) 
    time1 = models.CharField(max_length=50) 
    emer = models.CharField(max_length=50)
    level = models.CharField(max_length=50)
    status = models.CharField(max_length=50)

class general(models.Model):
    pname = models.CharField(max_length=50)
    seatno = models.CharField(max_length=50)
    date01 = models.CharField(max_length=50)
    date1 = models.CharField(max_length=50)
    time01 = models.CharField(max_length=50) 
    time1 = models.CharField(max_length=50) 
    emer = models.CharField(max_length=50)
    level = models.CharField(max_length=50)
    status = models.CharField(max_length=50)

class ac(models.Model):
    pname = models.CharField(max_length=50)
    seatno = models.CharField(max_length=50)
    date01 = models.CharField(max_length=50)
    date1 = models.CharField(max_length=50)
    time01 = models.CharField(max_length=50) 
    time1 = models.CharField(max_length=50) 
    emer = models.CharField(max_length=50)
    level = models.CharField(max_length=50)
    status = models.CharField(max_length=50)


class details(models.Model):
    Cancer=models.CharField(max_length=10)
    Autoimmune=models.CharField(max_length=10)
    Celiac=models.CharField(max_length=10)
    Heart=models.CharField(max_length=10)
    Infectious=models.CharField(max_length=10)
    Allergies=models.CharField(max_length=10)
    Crohn=models.CharField(max_length=10)
    Liver=models.CharField(max_length=10)