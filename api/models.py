from django.db import models

# Create your models here.
class  Tarefa(models.Model):
    titulo = models.CharField(max_length=100)
    descricao = models.TextField(blank=True)
    concluido = models.BooleanField(default=False)
    def __str__(self):
        return self.titulo
