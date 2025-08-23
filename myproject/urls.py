from django.contrib import admin
from django.urls import path, include
from rest_framework import routers
from api.views import TarefaViewSet

router = routers.DefaultRouter()
router.register(r'tarefas', TarefaViewSet)

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', include(router.urls)),
]
