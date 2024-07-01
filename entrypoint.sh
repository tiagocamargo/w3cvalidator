#!/bin/bash

#URL=$1
#LEVEL=${2:-"error"}
#HOST=${3:-"https://validator.w3.org/nu/"}

#RESULT=$(curl -sS -L -X GET ''"$HOST"'?doc='"$URL"'&out=json&level='"$LEVEL"'' | jq -r )

#echo $RESULT


# Inicializa a variável de porcentagem
percent=0

# Loop que incrementa a porcentagem a cada segundo
while [ $percent -le 100 ]; do
  # Limpa a linha anterior
  echo -ne "\r"

  # Exibe a porcentagem atual
  echo -ne "Validando: $percent%"

  # Incrementa a porcentagem
  ((percent++))

  # Aguarda um segundo
  sleep 1
done

# Exibe uma mensagem de conclusão
echo -e "\nValidação completa!"


