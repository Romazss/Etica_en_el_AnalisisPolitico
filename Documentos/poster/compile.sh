#!/bin/bash

# Script de compilación para póster LaTeX en Linux/Mac
# Uso: bash compile.sh

echo "================================"
echo "Compilando Póster Científico A0"
echo "================================"
echo ""

# Obtener directorio del script
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd "$SCRIPT_DIR"

echo "📁 Directorio de trabajo: $SCRIPT_DIR"
echo ""

# Verificar que pdflatex está instalado
if ! command -v pdflatex &> /dev/null; then
    echo "❌ Error: pdflatex no está instalado"
    echo "Instala TeX Live completo para compilar LaTeX"
    exit 1
fi

# Limpiar archivos anteriores
echo "🧹 Limpiando archivos anteriores..."
rm -f *.aux *.log *.out *.toc *.fls *.fdb_latexmk *.synctex.gz

echo "✅ Archivos temporales eliminados"
echo ""

# Compilar con pdflatex (primera pasada)
echo "📝 Primera compilación (pdflatex)..."
pdflatex -interaction=nonstopmode poster.tex

if [ $? -ne 0 ]; then
    echo "❌ Error en primera compilación"
    exit 1
fi

echo "✅ Primera compilación completada"
echo ""

# Compilar nuevamente (segunda pasada para referencias)
echo "📝 Segunda compilación (referencias)..."
pdflatex -interaction=nonstopmode poster.tex

if [ $? -ne 0 ]; then
    echo "❌ Error en segunda compilación"
    exit 1
fi

echo "✅ Segunda compilación completada"
echo ""

# Verificar que se creó el PDF
if [ -f "poster.pdf" ]; then
    echo "✅ PDF generado exitosamente: poster.pdf"
    echo ""
    echo "📊 Información del archivo:"
    filesize=$(ls -lh poster.pdf | awk '{print $5}')
    echo "   Tamaño: $filesize"
    echo "   Ubicación: $(pwd)/poster.pdf"
    echo ""
    
    # Ofrecer abrir el PDF en macOS
    if [[ "$OSTYPE" == "darwin"* ]]; then
        read -p "¿Deseas abrir el PDF? (s/n): " -n 1 -r
        echo
        if [[ $REPLY =~ ^[Ss]$ ]]; then
            open poster.pdf
        fi
    fi
    
    # Ofrecer abrir en Linux
    if [[ "$OSTYPE" == "linux-gnu"* ]]; then
        read -p "¿Deseas abrir el PDF? (s/n): " -n 1 -r
        echo
        if [[ $REPLY =~ ^[Ss]$ ]]; then
            xdg-open poster.pdf &
        fi
    fi
else
    echo "❌ Error: No se pudo generar el PDF"
    exit 1
fi

echo ""
echo "================================"
echo "✅ Compilación completada"
echo "================================"
