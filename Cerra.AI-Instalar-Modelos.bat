@echo off
rem ==========================================================================
rem  Cerra.AI - instalador de modelos de IA (roda uma vez, precisa de internet)
rem  Baixa os modelos locais usados pelo Cerra.AI no Ollama.
rem  Depois disso, o Cerra.AI funciona 100% offline.
rem ==========================================================================
title Cerra.AI - Instalar modelos
echo.
echo  ===========================================================
echo     Cerra.AI - Instalacao dos modelos de IA (uma unica vez)
echo  ===========================================================
echo.

where ollama >nul 2>nul
if errorlevel 1 (
    echo [ERRO] Ollama nao encontrado.
    echo        Instale primeiro: https://ollama.com/download/windows
    echo        Depois rode este arquivo de novo.
    echo.
    pause
    exit /b 1
)

echo [1/3] Modelo de busca nos documentos (nomic-embed-text, ~0,3 GB)
ollama pull nomic-embed-text
if errorlevel 1 goto falhou
echo.
echo [2/3] Modelo rapido para conversas simples (qwen2.5:1.5b, ~1 GB)
ollama pull qwen2.5:1.5b
if errorlevel 1 goto falhou
echo.
echo [3/3] Modelo principal, com visao de imagens (gemma3, ~3,3 GB)
ollama pull gemma3
if errorlevel 1 goto falhou
echo.
echo  Modelos essenciais instalados.
echo.
echo  OPCIONAL - perfil completo (mais 2 modelos de 8B, ~10 GB, exige GPU de 8 GB+):
choice /c SN /m " Instalar tambem llama3.1:8b e gemma4 (S/N)"
if errorlevel 2 goto fim
ollama pull llama3.1:8b
ollama pull gemma4
goto fim

:falhou
echo.
echo [ERRO] O download falhou. Confira a internet e rode este arquivo de novo
echo        (o que ja foi baixado nao e baixado outra vez).
pause
exit /b 1

:fim
echo.
echo  Pronto! Abra o Cerra.AI.exe.
echo.
pause
