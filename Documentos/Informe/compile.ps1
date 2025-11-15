# ============================================================
# SCRIPT DE COMPILACION - Para Windows PowerShell
# ============================================================

param(
    [string]$Action = "build",
    [switch]$View = $false
)

$OutputDir = "output"
$MainFile = "main.tex"
$LaTexCmd = "pdflatex"

function Build-Document {
    Write-Host "Compilando documento LaTeX..." -ForegroundColor Green
    
    if (-not (Test-Path $OutputDir)) {
        New-Item -ItemType Directory -Path $OutputDir | Out-Null
        Write-Host "Carpeta de output creada."
    }
    
    $flags = "-interaction=nonstopmode", "-output-directory=$OutputDir", $MainFile
    
    # Primera compilacion
    & $LaTexCmd $flags
    if ($LASTEXITCODE -ne 0) {
        Write-Host "Error en la primera compilación." -ForegroundColor Red
        return $false
    }
    
    # Segunda compilación para referencias cruzadas
    & $LaTexCmd $flags
    if ($LASTEXITCODE -eq 0) {
        Write-Host "Documento compilado exitosamente en $OutputDir\main.pdf" -ForegroundColor Green
        return $true
    }
    else {
        Write-Host "Error en la segunda compilación." -ForegroundColor Red
        return $false
    }
}

function Clean-Build {
    Write-Host "Limpiando archivos temporales..." -ForegroundColor Yellow
    
    $extensions = @("*.aux", "*.log", "*.toc", "*.bbl", "*.blg", "*.out")
    foreach ($ext in $extensions) {
        Remove-Item -Path "$OutputDir\$ext" -ErrorAction SilentlyContinue
    }
    
    Write-Host "Limpieza completada." -ForegroundColor Green
}

function Clean-All {
    Write-Host "Eliminando carpeta de output..." -ForegroundColor Yellow
    Remove-Item -Path $OutputDir -Recurse -ErrorAction SilentlyContinue
    Write-Host "Limpieza total completada." -ForegroundColor Green
}

function Show-Help {
    Write-Host @"
Script de Compilacion LaTeX para Windows PowerShell

Uso: .\compile.ps1 [Action] [-View]

Acciones disponibles:
  build      - Compilar el documento PDF (por defecto)
  clean      - Limpiar archivos temporales
  clean-all  - Eliminar la carpeta de output completa
  help       - Mostrar esta ayuda

Opciones:
  -View      - Abrir el PDF después de compilar

Ejemplos:
  .\compile.ps1                    # Compilar
  .\compile.ps1 build -View        # Compilar y abrir
  .\compile.ps1 clean              # Limpiar archivos temporales
  .\compile.ps1 clean-all          # Eliminar output
"@
}

# Ejecutar acción
switch ($Action.ToLower()) {
    "build" {
        $success = Build-Document
        if ($success -and $View) {
            Write-Host "Abriendo documento..." -ForegroundColor Cyan
            Start-Process "$OutputDir\main.pdf"
        }
    }
    "clean" {
        Clean-Build
    }
    "clean-all" {
        Clean-All
    }
    "help" {
        Show-Help
    }
    default {
        Write-Host "Acción no reconocida: $Action" -ForegroundColor Red
        Show-Help
    }
}
