import django
django.setup()
from django.urls import include, re_path

from . import views


urlpatterns = [
    re_path('', views.home),
    re_path(r'(?P<id_graphics_cards>[0-9]+)/$', views.detail, name="graphic_card"),
    re_path('find_graphics_cards', views.find_graphics_cards, name="find_graphics_cards")

]