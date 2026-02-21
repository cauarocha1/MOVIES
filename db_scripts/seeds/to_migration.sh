#!/bin/bash

# 1. Pega o diretório onde o script está localizado
SCRIPT_DIR=$(dirname "$(readlink -f "$0")")

# 2. Define o arquivo de saída
OUTPUT_FILE="$SCRIPT_DIR/migration.sql"

# 3. Verifica se o arquivo já existe; se existir, deleta
if [ -f "$OUTPUT_FILE" ]; then
    rm "$OUTPUT_FILE"
fi

# 4. Busca arquivos .sql (exceto o de saída) e concatena
# Ordenado por nome (sort)
for file in $(ls "$SCRIPT_DIR"/*.sql | grep -v "migration.sql" | sort); do
    cat "$file" >> "$OUTPUT_FILE"
    echo -e "\nGO" >> "$OUTPUT_FILE"
done

echo "Todos os arquivos foram combinados em $OUTPUT_FILE"