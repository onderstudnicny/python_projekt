import sys

from django.shortcuts import render
from django.http import HttpResponse
from .models import GraphicsCards
from Grafickekarty.czc import find_all_pr_czc
from Grafickekarty.mironet import find_all_pr_mironet


def home(request):
    return render(request, "home.html")

def detail(request, id_graphics_cards):
    return HttpResponse("<h2> Informace o grafické kartě s id:" + str(id_graphics_cards) + "</h2>")
    # Create your views here.

def find_graphics_cards(request):
    find_all_pr_mironet()
    find_all_pr_czc()
    return HttpResponse("""<html><script>window.location.replace('/');</script></html>""")





