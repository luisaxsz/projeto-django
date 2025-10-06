#!/bin/bash
# Espera o Elasticsearch iniciar completamente
echo "Esperando Elasticsearch subir..."
until curl -u elastic:senha123 -s http://elasticsearch:9200 >/dev/null; do
  sleep 5
done

# Alterar a senha do usuário kibana_system
echo "Alterando senha do kibana_system..."
curl -u elastic:elastic -X PUT "http://elasticsearch:9200/_security/user/kibana_system/_password" \
-H "Content-Type: application/json" -d'
{
  "password" : "senha123"
}'

echo "Senha do kibana_system alterada com sucesso!"
