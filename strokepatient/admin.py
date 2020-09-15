from django.contrib import admin
from .models import register_form,sendreport,combine,icuroom,iicu,general,ac

# Register your models here.
admin.site.register(register_form)
admin.site.register(sendreport)
admin.site.register(combine)
admin.site.register(icuroom)
admin.site.register(iicu)
admin.site.register(general)
admin.site.register(ac)

