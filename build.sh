#!/usr/bin/env bash
# Genera dist/gr-electricidad.zip listo para subir en Apariencia → Temas → Añadir nuevo tema.
set -euo pipefail
cd "$(dirname "$0")"
mkdir -p dist
rm -f dist/gr-electricidad.zip
zip -rq -X dist/gr-electricidad.zip gr-electricidad -x '*.DS_Store' -x '*/.git*'
echo "Creado dist/gr-electricidad.zip ($(du -h dist/gr-electricidad.zip | cut -f1))"
