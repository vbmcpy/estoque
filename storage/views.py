from django.shortcuts import render


def startHome(request):
    return render(request,'home.html')
    
def startAbout(request):
    return render(request,'about.html')    