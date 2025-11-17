# Script de compilación para póster LaTeX en Windows
# Uso: .\compile.ps1

Write-Host "================================" -ForegroundColor Cyan
Write-Host "Compilando Póster Científico A0" -ForegroundColor Cyan
Write-Host "================================" -ForegroundColor Cyan
Write-Host ""

# Obtener directorio actual
$scriptPath = Split-Path -Parent $MyInvocation.MyCommand.Path
Set-Location $scriptPath

Write-Host "📁 Directorio de trabajo: $scriptPath" -ForegroundColor Yellow
Write-Host ""

# Limpiar archivos anteriores
Write-Host "🧹 Limpiando archivos anteriores..." -ForegroundColor Yellow
Remove-Item -Force -ErrorAction SilentlyContinue *.aux
Remove-Item -Force -ErrorAction SilentlyContinue *.log
Remove-Item -Force -ErrorAction SilentlyContinue *.out
Remove-Item -Force -ErrorAction SilentlyContinue *.toc
Remove-Item -Force -ErrorAction SilentlyContinue *.fls
Remove-Item -Force -ErrorAction SilentlyContinue *.fdb_latexmk

Write-Host "✅ Archivos temporales eliminados" -ForegroundColor Green
Write-Host ""

# Compilar con pdflatex (primera pasada)
Write-Host "📝 Primera compilación (pdflatex)..." -ForegroundColor Yellow
pdflatex -interaction=nonstopmode poster.tex

if ($LASTEXITCODE -ne 0) {
    Write-Host "❌ Error en primera compilación" -ForegroundColor Red
    exit 1
}

Write-Host "✅ Primera compilación completada" -ForegroundColor Green
Write-Host ""

# Compilar nuevamente (segunda pasada para referencias)
Write-Host "📝 Segunda compilación (referencias)..." -ForegroundColor Yellow
pdflatex -interaction=nonstopmode poster.tex

if ($LASTEXITCODE -ne 0) {
    Write-Host "❌ Error en segunda compilación" -ForegroundColor Red
    exit 1
}

Write-Host "✅ Segunda compilación completada" -ForegroundColor Green
Write-Host ""

# Verificar que se creó el PDF
if (Test-Path "poster.pdf") {
    Write-Host "✅ PDF generado exitosamente: poster.pdf" -ForegroundColor Green
    Write-Host ""
    Write-Host "📊 Información del archivo:" -ForegroundColor Cyan
    $fileInfo = Get-Item "poster.pdf"
    Write-Host "   Tamaño: $([math]::Round($fileInfo.Length / 1MB, 2)) MB" -ForegroundColor Green
    Write-Host "   Ubicación: $($fileInfo.FullName)" -ForegroundColor Green
    Write-Host ""
    
    # Ofrecer abrir el PDF
    $response = Read-Host "¿Deseas abrir el PDF? (S/N)"
    if ($response -eq "S" -or $response -eq "s") {
        Invoke-Item "poster.pdf"
    }
} else {
    Write-Host "❌ Error: No se pudo generar el PDF" -ForegroundColor Red
    exit 1
}

Write-Host ""
Write-Host "================================" -ForegroundColor Green
Write-Host "✅ Compilación completada" -ForegroundColor Green
Write-Host "================================" -ForegroundColor Green
