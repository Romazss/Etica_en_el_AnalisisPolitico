# 📌 ÍNDICE COMPLETO - Proyecto Póster Científico

## Estructura Final de Archivos

```
Documentos/poster/
│
├── 📊 ARCHIVOS PRINCIPALES
│   ├── poster.tex                    ⭐ PÓSTER A0 (LaTeX compilable)
│   ├── poster.pdf                    ⭐ PÓSTER FINAL (generado tras compilar)
│   └── README.md                     ℹ️  Instrucciones técnicas
│
├── 📝 DOCUMENTOS DE REFERENCIA
│   ├── POSTER_CIENTIFICO.md          📄 Resumen Markdown del póster
│   ├── RESUMEN_EJECUTIVO.md          📄 Resumen de cumplimiento de rúbrica
│   ├── GUIA_PRESENTACION.md          📄 Script completo presentación 10 min
│   └── INDICE.md                     📄 Este archivo
│
└── 🛠️ SCRIPTS DE COMPILACIÓN
    ├── compile.ps1                   💻 Compilar en Windows
    └── compile.sh                    💻 Compilar en Linux/Mac
```

---

## 📋 GUÍA RÁPIDA POR USO

### ✅ Para Compilar el Póster

**Opción 1: Windows (Recomendado)**
```powershell
cd c:\Users\esteb\GitHub\Etica_en_el_AnalisisPolitico\Documentos\poster
.\compile.ps1
```

**Opción 2: Linux/Mac**
```bash
cd ~/GitHub/Etica_en_el_AnalisisPolitico/Documentos/poster
bash compile.sh
```

**Opción 3: Manual (Cualquier SO)**
```bash
pdflatex -interaction=nonstopmode poster.tex
```

---

### 📖 Para Entender el Contenido

**Orden de lectura recomendado:**
1. **RESUMEN_EJECUTIVO.md** (5 min) - Visión general del proyecto
2. **POSTER_CIENTIFICO.md** (15 min) - Contenido detallado
3. **GUIA_PRESENTACION.md** (10 min) - Cómo presentar

---

### 🎤 Para Preparar la Presentación

**Pasos:**
1. Leer `GUIA_PRESENTACION.md` completo
2. Distribuir roles entre 4-5 integrantes (2-2.5 min cada uno)
3. Practicar script 2-3 veces
4. Preparar respuestas a preguntas anticipadas
5. Hacer presentación de prueba con compañeros

---

## 📊 CONTENIDO DEL PÓSTER

### Secciones Principales

| Sección | Rúbrica | Contenido Clave |
|---------|---------|-----------------|
| **Postura Ética** | 15% | "Algoritmos fomentan polarización erosionando democracia" + 3 consecuencias |
| **Análisis Sociotécnico** | 25% | Mecanismo algoritmos + actores + dinámicas poder + datos Chile |
| **Casos Chilenos** | Investigación | Elección 2021 + Plebiscitos 2022-23 + Campañas 2024-25 |
| **Análisis Ético** | 20% | 7 riesgos documentados + polarización subjetiva |
| **Propuestas Éticas** | 20% | 4 soluciones (regulación, alfabetización, diseño, campañas) |
| **Elementos Visuales** | 15% | 4+ diagramas/tablas/gráficos propios |
| **Presentación Oral** | 15% | 10 minutos, participación equitativa |

---

## 🔍 DÓNDE ENCONTRAR INFORMACIÓN

### Si necesitas...

**Instrucciones técnicas:** `README.md`

**Cómo compilar LaTeX:** `README.md` + `compile.ps1` / `compile.sh`

**Contenido del póster:** `POSTER_CIENTIFICO.md`

**Cómo presentar:**
- Script detallado: `GUIA_PRESENTACION.md`
- Distribución roles: `GUIA_PRESENTACION.md` (secciones "Distribución de Presentación")
- Preguntas anticipadas: `GUIA_PRESENTACION.md` (sección "Manejo de Preguntas")

**Cumplimiento de rúbrica:** `RESUMEN_EJECUTIVO.md` (sección "Cumplimiento de Rúbrica")

**Datos/cifras específicas:**
- 20,000 bots: `POSTER_CIENTIFICO.md` (Casos Chilenos)
- Polarización subjetiva: `POSTER_CIENTIFICO.md` (Análisis Ético)
- Riesgos documentados: `POSTER_CIENTIFICO.md` (Análisis Ético)
- Financiamiento AFP: `POSTER_CIENTIFICO.md` (Casos 2024-25)

---

## ✨ RECURSOS INCLUIDOS

### Por Archivo

#### `poster.tex`
- Documento LaTeX compilable
- Formato A0 (833mm x 1177mm)
- 3 columnas con contenido balanceado
- Paleta de colores: Rojo (riesgo), Azul (datos), Verde (soluciones)
- **Requisitos:** TeX Live o MikTeX

#### `POSTER_CIENTIFICO.md`
- Versión legible del póster
- Markdown con estructura clara
- Fácil de consultar antes de compilar
- Basado en transcripciones reales

#### `GUIA_PRESENTACION.md`
- Script minuto a minuto (10 min total)
- Distribución entre 4-5 integrantes
- Puntos clave para cada minuto
- Preguntas anticipadas y respuestas
- Consejos de presentación

#### `README.md`
- Instrucciones compilación
- Lista de requisitos
- Descripción contenido
- Nota sobre presentación

#### `RESUMEN_EJECUTIVO.md`
- Cumplimiento de rúbrica (% por criterio)
- Estructura del proyecto
- Resumen deliverables
- Cómo usar los archivos

#### `compile.ps1` / `compile.sh`
- Scripts automáticos
- Limpian archivos temporales
- Compilan 2 veces (referencias)
- Abren PDF automáticamente
- Con mensajes de progreso

---

## 🎯 CHECKLIST PRE-PRESENTACIÓN

### Semana antes (17 nov - Avance)
- [ ] Compilar póster exitosamente
- [ ] Revisar que PDF se ve correcto
- [ ] Leer contenido completo
- [ ] Distribuir roles entre integrantes

### Días antes (22-23 nov)
- [ ] Practicar presentación 2-3 veces
- [ ] Cronometrar cada sección (10 min total)
- [ ] Preparar respuestas a preguntas
- [ ] Revisar datos/cifras están correctas
- [ ] Verificar que todos conocen script

### Día de presentación (24 nov)
- [ ] Llegar 10 min antes
- [ ] Probar que se ve bien en pantalla
- [ ] Hacer ronda de prueba silenciosa
- [ ] Respirar y confiar en preparación

---

## 📈 ESTRUCTURA PRESENTACIÓN ORAL

**Distribución sugerida para 4 integrantes:**

| Minuto | Integrante | Tema | Duración |
|--------|-----------|------|----------|
| 0-1 | Persona A | Enganche + Contexto | 1 min |
| 1-3 | Persona A/B | Postura Ética + Importancia | 2 min |
| 3-5 | Persona B | Análisis Sociotécnico | 2 min |
| 5-7 | Persona C | Casos Chilenos | 2 min |
| 7-8.5 | Persona D | Riesgos Éticos | 1.5 min |
| 8.5-10 | Persona D | Propuestas + Cierre | 1.5 min |

---

## 🔗 REFERENCIAS INCLUIDAS

**Académicas externas (Rúbrica 10%):**
1. Sunstein, C. R. (2009) - Republic.com 2.0
2. Pariser, E. (2011) - The Filter Bubble
3. Lazer et al. (2018) - The Science of Fake News

**Investigaciones chilenas reales:**
1. Plataforma Telar - Análisis desinformación constituyente
2. CIPER - Investigación plebiscito 2022
3. Diputado Gonzalo Winter - AFP campañas clandestinas
4. El Desconcierto & CNN - Análisis bots y fake news
5. Universidad de Chile - Estudios polarización

---

## ⚠️ IMPORTANTES

### Requisitos Técnicos
- TeX Live (completo) o MikTeX
- 10-15 minutos para compilar primera vez
- ~50MB de espacio en disco

### Requisitos de Grupo
- 4-5 integrantes
- Cada uno: 2-2.5 minutos
- Participación equitativa evaluada
- Respuestas a preguntas conjuntas

### Fechas Críticas
- Avance: **17 de noviembre**
- Presentación: **24 de noviembre**
- Duración: **10 minutos exactos**

---

## 💡 TIPS FINALES

✅ **Antes de compilar:**
- Tener TeX Live instalado (verificar con `pdflatex --version`)
- Estar en directorio correcto

✅ **Antes de presentar:**
- Practicar minutos 7-10 (donde hay más contenido)
- Memorizar 3-4 estadísticas clave
- Preparar ejemplos concretos (Matei, Jara, AFP)

✅ **Durante presentación:**
- Mirar audiencia, no póster
- Conectar datos con emoción
- Usar pausas estratégicamente
- Si error: corregir calmadamente, seguir adelante

---

## 📞 SOPORTE

### Si falla compilación:
1. Verificar TeX Live instalado
2. Ejecutar script (maneja errores)
3. Revisar `README.md`
4. Último recurso: usar versión PDF pre-compilada

### Si faltan datos:
- Revisar `POSTER_CIENTIFICO.md`
- Leer `RESUMEN_EJECUTIVO.md`
- Buscar en `GUIA_PRESENTACION.md`

### Si necesitas ajustar contenido:
1. Editar `poster.tex`
2. Recompilar
3. Generar nuevo PDF

---

**Proyecto completado - Listo para presentación**

Noviembre 2025 | PUC | Ética de la IA
