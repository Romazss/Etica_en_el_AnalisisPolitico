# Informe - Estructura Modularizada LaTeX

Este proyecto utiliza una estructura modularizada de LaTeX para facilitar la compilación y mantenimiento del informe sobre Polarización Algorítmica y Ética en el Análisis Político.

## Estructura de Carpetas

```
Informe/
├── main.tex              # Archivo principal (punto de entrada)
├── includes/             # Configuraciones y estilos
│   ├── preamble.tex      # Paquetes y configuraciones globales
│   └── metadata.tex      # Metadatos del documento
├── src/                  # Módulos de contenido
│   ├── 01_introduccion.tex
│   ├── 02_marco_teorico.tex
│   ├── 03_metodologia.tex
│   ├── 04_resultados.tex
│   └── 05_conclusiones.tex
├── output/               # Archivos compilados (generados)
│   └── main.pdf          # PDF final
├── Makefile              # Para compilar en Linux/Mac
├── compile.ps1           # Script de compilación para Windows
└── README.md             # Este archivo
```

## Requisitos

- **LaTeX Distribution**: MiKTeX (Windows) o TeX Live (Linux/Mac)
- **Make** (opcional, para usar Makefile en Linux/Mac)

### Instalación

#### Windows
Descarga e instala [MiKTeX](https://miktex.org/download)

#### Linux
```bash
sudo apt-get install texlive-full
```

#### macOS
```bash
brew install basictex
```

## Compilación

### Opción 1: PowerShell Script (Windows - Recomendado)

```powershell
# Compilar
.\compile.ps1

# Compilar y abrir el PDF
.\compile.ps1 build -View

# Limpiar archivos temporales
.\compile.ps1 clean

# Limpiar todo
.\compile.ps1 clean-all

# Mostrar ayuda
.\compile.ps1 help
```

### Opción 2: Makefile (Linux/Mac o con GNU Make en Windows)

```bash
# Compilar
make build

# Compilar y abrir
make build view

# Limpiar
make clean

# Limpiar todo
make clean-all

# Ver ayuda
make help
```

### Opción 3: Compilación Manual

```bash
pdflatex -interaction=nonstopmode -output-directory=output main.tex
pdflatex -interaction=nonstopmode -output-directory=output main.tex
```

## Edición del Contenido

1. **Introducción**: Edita `src/01_introduccion.tex`
2. **Marco Teórico**: Edita `src/02_marco_teorico.tex`
3. **Metodología**: Edita `src/03_metodologia.tex`
4. **Resultados**: Edita `src/04_resultados.tex`
5. **Conclusiones**: Edita `src/05_conclusiones.tex`

### Estilos Globales

Para cambiar estilos, fuentes, márgenes, etc., edita `includes/preamble.tex`

### Metadatos

Para actualizar título, autor, etc., edita `includes/metadata.tex`

## Agregar Nuevas Secciones

1. Crea un nuevo archivo en `src/` (ej: `06_referencias.tex`)
2. Añade la línea en `main.tex`:
   ```latex
   \input{src/06_referencias}
   ```

## Características Modularizadas

✅ **Separación de Concerns**: Cada sección es un archivo independiente
✅ **Fácil Mantenimiento**: Cambios localizados sin afectar el documento completo
✅ **Reutilización**: Las configuraciones se comparten mediante `includes/`
✅ **Control de Versiones**: Facilita el seguimiento de cambios
✅ **Compilación Automática**: Scripts para Windows y Unix
✅ **Limpieza Automática**: Gestión de archivos temporales

## Solución de Problemas

### Error: "pdflatex not found"
- Instala la distribución de LaTeX para tu sistema operativo

### Errores de compilación LaTeX
- Revisa el archivo `output/main.log` para detalles de errores
- Asegúrate de que los caracteres especiales usen UTF-8

### PDF no se abre
- Verifica que la compilación fue exitosa (sin errores)
- El archivo estará en `output/main.pdf`

## Notas

- El directorio `output/` se genera automáticamente
- Los archivos temporales (`.aux`, `.log`, etc.) se guardan en `output/`
- Solo el PDF final permanece en `output/` después de limpiar

## Licencia

Este proyecto es parte del análisis de ética en el análisis político.
