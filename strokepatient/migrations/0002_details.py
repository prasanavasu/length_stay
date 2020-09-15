# Generated by Django 3.0.3 on 2020-02-24 09:07

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('strokepatient', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='details',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('Cancer', models.CharField(max_length=10)),
                ('Autoimmune', models.CharField(max_length=10)),
                ('Celiac', models.CharField(max_length=10)),
                ('Heart', models.CharField(max_length=10)),
                ('Infectious', models.CharField(max_length=10)),
                ('Allergies', models.CharField(max_length=10)),
                ('Crohn', models.CharField(max_length=10)),
                ('Liver', models.CharField(max_length=10)),
            ],
        ),
    ]
