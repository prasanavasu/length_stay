from django.urls import path
from . import views


app_name = 'strokepatient'  # here for namespacing of urls.

urlpatterns = [
    
    path("", views.index1, name="index1"),
    path("index1", views.index1, name="index1"),
    path("index", views.index, name="index"),
    path("login", views.login, name="login"),
    path("register", views.register, name="register"),
    path("dbregister", views.dbregister, name="dbregister"),
    path("logincheck", views.logincheck, name="logincheck"),
    path("sufferer", views.sufferer, name="sufferer"),
    path("supporter", views.supporter, name="supporter"),
    path("admincheck", views.admincheck, name="admincheck"),
    path("details", views.detailss, name="details"),
    path("facilities", views.facilities, name="facilities"),
    path("availability", views.availability, name="availability"),
    path("gw", views.gw, name="gw"),
    path("gwac", views.gwac, name="gwac"),
    path("beddetails", views.beddetails, name="beddetails"),
    path("send", views.send, name="send"),
   
    path("benefactury", views.benefactury, name="benefactury"),
    path("icucheck", views.icucheck, name="icucheck"),
    path("iicucheck", views.iicucheck, name="iicucheck"),
    path("delete", views.delete, name="delete"),
   
    

    
    
]