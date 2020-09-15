from django.shortcuts import render,redirect
from django.http import HttpResponse
from .models import *
from django.contrib import messages
from django.core.validators import validate_email
from django.contrib.auth.models import User,auth
import math, random 
from tkinter import *
from tkinter import messagebox
#import psycopg2 as p
import mysql.connector as p
import pandas as pd

conn = p.connect(
user = 'root',
password = 'admin',
host = 'localhost',
database = 'lengthstay'
)
cursor = conn.cursor()
cursor.execute("SELECT value FROM strokepatient_sendreport ")
myresult = cursor.fetchall()

cursor1 = conn.cursor()



# Create your views here.
def index1(request):
    return render(request,"index1.html")

def index(request):
    return render(request,"index.html")

def login(request):
    return render(request,"login.html")

def register(request):
    return render(request,"register.html")

def supporter(request):
    return render(request,"supporter.html")

def facilities(request):
    return render(request,"facilities.html")

 ####################################################################
def dbregister(request):
    if request.method == 'POST':
        username = request.POST['username']
        email = request.POST['email']
        password = request.POST['password']
       
        phone = request.POST['phone']
        nat = request.POST['nat']
        ste = request.POST['ste']
        age = request.POST['age']
        img = request.FILES.get('img')
       
        if register_form.objects.filter(email=email).exists():
            print('Email id is taken')
            return render(request,'register.html')
        else:
            reg = register_form(username=username,email=email,password=password,phone=phone,nat=nat,ste=ste,age=age,img=img)
            
            reg.save();
            print("user is created")
        
    return render(request,"login.html")

def logincheck(request): 

    
    email = request.POST.get('email')
    password = request.POST.get('password')
    
    
    if register_form.objects.filter(email=email).exists():
    
        
    
        if register_form.objects.filter(password=password).exists():
            

            m=register_form.objects.get(email=email)
            idd=m.id
            print(idd)
            request.session['email'] = email
           

            if myresult==[]:
                val="0"
                print("nn",val)
                return render(request,'sufferer.html',{'idd':idd,'value':val})
            else:
                if sendreport.objects.filter(id=idd).exists():
                    n=sendreport.objects.get(id=idd)
                    val=n.value
                    print("sds",val)
                    return render(request,'sufferer.html',{'idd':idd,'value':val})
                else:
                    val="0"
                    print("sds",val)
                    return render(request,'sufferer.html',{'idd':idd,'value':val}) 
            
    
        else:
           
            print("password is not correct")
            
            return render(request,'login.html')
        
           
    else:
        print('Email is not there...')
        
        return render(request,'login.html')
 
def send(request):
    pass


def sufferer(request):
    
    mail = request.session['email']
   
    
   
    m=register_form.objects.get(email=mail)
    idd=m.id 
    username=m.username
    email=m.email
    password=m.password
    phone=m.phone
    nat=m.nat
    ste=m.ste
    age=m.age
    img=m.img
    if sendreport.objects.filter(id=idd).exists():
        n=sendreport.objects.get(id=idd)
        val=n.value
                    
    else:
        val="0"
 
   
    if request.method == 'POST':
        value="null"
        val="null"
        date0 = request.POST['date0']
        level = request.POST['level']
        gname = request.POST['gname']
        dname = request.POST['dname']
        emer = request.POST['emer']
        date1 = request.POST['date1']
        
        if val==value:
            value=1
            send = sendreport(date0=date0,level=level,gname=gname,dname=dname,emer=emer,date1=date1,id=idd,value=value)
            sen = combine(date0=date0,level=level,gname=gname,dname=dname,emer=emer,date1=date1,id=idd,value=value,username=username,email=email,password=password,phone=phone,nat=nat,ste=ste,age=age,img=img)
            send.save();
            sen.save();
        return render(request,'sufferer.html',{'idd':idd,'value':val}) 

    
    return render(request,'sufferer.html',{'idd':idd,'value':val})   

def admincheck(request):
    username = request.POST.get('username')
    password = request.POST.get('password')
    user = auth.authenticate(username=username,password=password)
    
   
    if user is not None:
        auth.login(request,user)
        
        return render(request, 'index.html')
    else:
        print("invalid credentials")
       
        return render(request, 'supporter.html')

def detailss(request):


    inff=details.objects.all()
    info=combine.objects.all()

    return render(request,"details.html",{'info':info,'inff':inff})

def icucheck(request):
    x=range(4)
    seat=0
    info=icuroom.objects.all()
    if info!="null":
        for i in info:
            seat=int(i.seatno)
            print(seat)
    else:
        pass
    icu="ICU AVAILABILITY"
    if request.method == 'POST':
        pname = request.POST['pname']
        seatno = request.POST['seatno']
        date01 = request.POST['date01']  
        date1 = request.POST['date1']
        time01 = request.POST['time01']
        time1 = request.POST['time1']
        emer = request.POST['emer']
        level = request.POST['level']      
        pid = request.POST['pid']  
        status = "ongoing"     
        regi = icuroom(status=status,pname=pname,seatno=seatno,date01=date01,date1=date1,time01=time01,time1=time1,emer=emer,level=level,id=pid) 
        regi.save();id=pid
        if combine.objects.filter(id=id).exists():
            com= combine.objects.get(id=id)
            com.delete();
           

    return render(request,"icuchec.html",{'icu':icu,'x':x,'seat':seat})

def iicucheck(request):
    x=range(1)
    info=iicu.objects.all()
    icu="IICU AVAILABILITY"
    if request.method == 'POST':
        pname = request.POST['pname']
        seatno = request.POST['seatno']
        date01 = request.POST['date01']  
        date1 = request.POST['date1']
        time01 = request.POST['time01']
        time1 = request.POST['time1']
        emer = request.POST['emer']
        level = request.POST['level']      
        pid = request.POST['pid']  
        status = "ongoing" 
        reg = iicu(status=status,pname=pname,seatno=seatno,date01=date01,date1=date1,time01=time01,time1=time1,emer=emer,level=level,id=pid) 
        #reg.save();
      
        print(d)
        id=pid
        if combine.objects.filter(id=id).exists():
            com= combine.objects.get(id=id)
            #com.delete();
           
    return render(request,"icuche.html",{'icu':icu,'x':x,'info':info})

def gw(request):
    x=range(125)
    seat=0
    info=general.objects.all()
    if info!="null":
        for i in info:
            seat=int(i.seatno)
            print(seat)
    else:
        pass

    icu="GENERALWARD/ NON AC AVAILABILITY"
    if request.method == 'POST':
        pname = request.POST['pname']
        seatno = request.POST['seatno']
        date01 = request.POST['date01']  
        date1 = request.POST['date1']
        time01 = request.POST['time01']
        time1 = request.POST['time1']
        emer = request.POST['emer']
        level = request.POST['level']      
        pid = request.POST['pid']   
        status = "ongoing"    
        reg = general(status=status,pname=pname,seatno=seatno,date01=date01,date1=date1,time01=time01,time1=time1,emer=emer,level=level,id=pid) 
        reg.save();
  
        if combine.objects.filter(id=pid).exists():
            com= combine.objects.get(id=pid)
            com.delete();
        

    return render(request,"icucheckk.html",{'icu':icu,'x':x,'seat':seat})

def gwac(request):
    x=range(50)
    seat=0
    info=ac.objects.all()
    if info!="null":
        for i in info:
            seat=int(i.seatno)
            print(seat)
    else:
        pass

    icu="GENERALWARD/ AC AVAILABILITY"
    if request.method == 'POST':
        pname = request.POST['pname']
        seatno = request.POST['seatno']
        date01 = request.POST['date01']  
        date1 = request.POST['date1']
        time01 = request.POST['time01']
        time1 = request.POST['time1']
        emer = request.POST['emer']
        level = request.POST['level']      
        pid = request.POST['pid'] 
        status = "ongoing"     
        reg = ac(status=status,pname=pname,seatno=seatno,date01=date01,date1=date1,time01=time01,time1=time1,emer=emer,level=level,id=pid) 
        reg.save();
        id=pid
        if combine.objects.filter(id=id).exists():
            com= combine.objects.get(id=id)
            com.delete();
           
    return render(request,"icucheck.html",{'icu':icu,'x':x,'seat':seat})

def availability(request):
    data=pd.read_csv("F:/Django/project/length_of_stay -change/strokepatient/patient.csv")
    d1=int(data["d1"].mean() )+ (random.randint(0,5))
    d2=int(data["d2"].mean())+ (random.randint(0,5))
    d3=int(data["d3"].mean())+ (random.randint(0,5))
    d4=int(data["d4"].mean())+ (random.randint(0,5))
    d5=int(data["d5"].mean())+ (random.randint(0,5))
    d6=int(data["d6"].mean())+ (random.randint(0,5))
    d=int(data["d"].mean())+ (random.randint(0,5))
    d8=int(data["d8"].mean())+ (random.randint(0,5))
   
    de=details(id=1,Cancer=d1,Autoimmune=d2,Celiac=d3,Heart=d4,Infectious=d5,Allergies=d6,Crohn=d,Liver=d8)
    de.save();
    coun=0
    inf=ac.objects.all()
    for i in inf:
        coun=coun+1
    print(coun)
    ava=50-coun

    cou=0
    infoo=icuroom.objects.all()
    for i in infoo:
        cou=cou+1
    print(cou)
    avic=4-cou

    co=0
    inffo=general.objects.all()
    for i in inffo:
        co=co+1
    print(co)
    avna=125-co

    count=0
    info=iicu.objects.all()
    for i in info:
        count=count+1
    print(count)
    aviic=1-count
    return render(request,"availability.html",{'avna':avna,'ava':ava,'avic':avic,'aviic':aviic})

def benefactury(request):

    info=icuroom.objects.all() 
    infoo=ac.objects.all()
    innf=general.objects.all()
    inff=iicu.objects.all()
    na="ICU"
    naa="IICU"
    n="GENERAL/NAC"
    nn="GENERAL/AC"
    
   
    
    return render(request,"benefactury.html",{'info':info,'infoo':infoo,'inff':inff,'innf':innf,'na':na,'naa':naa,'n':n,'nn':nn})

def beddetails(request):
    mail = request.session['email']
    print(mail)
    
    m=register_form.objects.get(email=mail)
    idd=m.id
    if sendreport.objects.filter(id=idd).exists():
        sr=sendreport.objects.get(id=idd)
        val=sr.value
    else:
        val="0"
    na="na"
    if icuroom.objects.filter(id=idd).exists():
        n=icuroom.objects.get(id=idd)
        na="ICU"
        seat=n.seatno
        date0=n.date01
        time0=n.time01
        date=n.date1
        time=n.time1
        name=n.pname
        return render(request,"bed.html",{'val':val,'seat':seat,'date0':date0,'time0':time0,'date':date,'time':time,'idd':idd,'name':name,'na':na})
    
    elif general.objects.filter(id=idd).exists():
        n=general.objects.get(id=idd)
        na="GENERAL"
        seat=n.seatno
        date0=n.date01
        time0=n.time01
        date=n.date1
        time=n.time1
        name=n.pname
        print(val)
        return render(request,"bed.html",{'val':val,'seat':seat,'date0':date0,'time0':time0,'date':date,'time':time,'idd':idd,'name':name,'na':na})

    elif iicu.objects.filter(id=idd).exists():
        n=iicu.objects.get(id=idd)
        na="IICU"
        seat=n.seatno
        date0=n.date01
        time0=n.time01
        date=n.date1
        time=n.time1
        name=n.pname
        return render(request,"bed.html",{'val':val,'seat':seat,'date0':date0,'time0':time0,'date':date,'time':time,'idd':idd,'name':name,'na':na})


    elif ac.objects.filter(id=idd).exists():
        n=ac.objects.get(id=idd)
        na="GENERAL/AC"
        seat=n.seatno
        date0=n.date01
        time0=n.time01
        date=n.date1
        time=n.time1
        name=n.pname
        return render(request,"bed.html",{'val':val,'seat':seat,'date0':date0,'time0':time0,'date':date,'time':time,'idd':idd,'name':name,'na':na})
 
    else:     
        

        if myresult==[]:
               
                return render(request,'sufferer.html',{'idd':idd,'value':val})
        else:
            return render(request,'sufferer.html',{'idd':idd,'value':val})     
        return render(request,"suffererr.html",{'value':val})
    
    
def delete(request):
    availname = request.POST.get('avail')
    iid = request.POST.get('iid')
    print(iid)
    print(availname)
    sr=sendreport.objects.get(id=iid)
    sr.value="0"
    sr.save();
    info=icuroom.objects.all() 
    infoo=ac.objects.all()
    innf=general.objects.all()
    inff=iicu.objects.all()
    na="ICU"
    naa="IICU"
    n="GENERAL/NAC"
    nn="GENERAL/AC"
    if availname == nn:
        cg = ac.objects.get(id=iid)
        cg.status="Finished"
        cg.save();
    elif availname == n:
        cg = general.objects.get(id=iid)
        cg.status="Finished"
        cg.save();
    elif availname == naa:
        cg = iicu.objects.get(id=iid)
        cg.status="Finished"
        cg.save();
    else:
        cg = icuroom.objects.get(id=iid)
        cg.status="Finished"
        cg.save();
   
    
    return render(request,"benefactury.html",{'info':info,'infoo':infoo,'inff':inff,'innf':innf,'na':na,'naa':naa,'n':n,'nn':nn})


    
    