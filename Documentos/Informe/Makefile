# ============================================================
# MAKEFILE - Compilación del Informe LaTeX
# ============================================================

# Variables
LATEX = pdflatex
MAIN = main
OUTPUT_DIR = output
LATEX_FLAGS = -interaction=nonstopmode -output-directory=$(OUTPUT_DIR)

# Targets
.PHONY: build clean view help all

# Target por defecto
all: build

# Compilar el documento PDF
build:
	@echo "Compilando $(MAIN).tex..."
	@mkdir -p $(OUTPUT_DIR)
	$(LATEX) $(LATEX_FLAGS) $(MAIN).tex
	$(LATEX) $(LATEX_FLAGS) $(MAIN).tex
	@echo "Documento compilado exitosamente en $(OUTPUT_DIR)/$(MAIN).pdf"

# Compilar con bibliografía (si es necesario)
build-bibtex:
	@echo "Compilando con bibtex..."
	@mkdir -p $(OUTPUT_DIR)
	$(LATEX) $(LATEX_FLAGS) $(MAIN).tex
	bibtex $(OUTPUT_DIR)/$(MAIN)
	$(LATEX) $(LATEX_FLAGS) $(MAIN).tex
	$(LATEX) $(LATEX_FLAGS) $(MAIN).tex

# Limpiar archivos temporales
clean:
	@echo "Limpiando archivos temporales..."
	@rm -rf $(OUTPUT_DIR)/*.aux
	@rm -rf $(OUTPUT_DIR)/*.log
	@rm -rf $(OUTPUT_DIR)/*.toc
	@rm -rf $(OUTPUT_DIR)/*.bbl
	@rm -rf $(OUTPUT_DIR)/*.blg
	@rm -rf $(OUTPUT_DIR)/*.out
	@echo "Archivos limpios"

# Limpiar todo incluido PDF
clean-all:
	@echo "Eliminando carpeta de output..."
	@rm -rf $(OUTPUT_DIR)
	@echo "Limpieza completa"

# Ver el PDF generado
view:
	@if [ -f $(OUTPUT_DIR)/$(MAIN).pdf ]; then \
		start $(OUTPUT_DIR)/$(MAIN).pdf; \
	else \
		echo "El archivo PDF no existe. Ejecute 'make build' primero."; \
	fi

# Mostrar ayuda
help:
	@echo "Makefile - Compilación del Informe LaTeX"
	@echo ""
	@echo "Comandos disponibles:"
	@echo "  make build         - Compilar el documento PDF"
	@echo "  make build-bibtex  - Compilar con bibliografía"
	@echo "  make clean         - Limpiar archivos temporales"
	@echo "  make clean-all     - Eliminar todo (incluido PDF)"
	@echo "  make view          - Abrir el PDF generado"
	@echo "  make help          - Mostrar esta ayuda"
