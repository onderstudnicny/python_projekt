from django.urls import include, path

from . import views

urlpatterns = [
    path('', views.home),
    path(r'(?P<id_graphics_cards>[0-9]+)/$', views.detail, name="graphic_card"),
    path('find_graphics_cards/', views.find_graphics_cards)

]