
from django.urls import path
from .views import *

urlpatterns = [
    path('jsontoken/',StudentApi.as_view(),name='jsontoken')
]