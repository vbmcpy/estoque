from django.urls import path
from storage import views

urlpatterns = [
    path('', views.startHome),
    path('home/', views.startHome, name='startHome'),
    path('about/', views.startAbout, name='startAbout'),
]
