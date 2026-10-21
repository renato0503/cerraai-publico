# Changelog

Todas as mudanças relevantes desta distribuição pública são registradas aqui.

## [1.0.0] - 2026-10-21

Primeira versão pública do Cerra.AI para Windows.

### Adicionado

- Executável único para Windows 10/11 64 bits, sem necessidade de instalação ou privilégios de administrador.
- Chat com modelos locais via Ollama, com streaming e roteamento automático de modelos.
- Base vetorial por workspace (ChromaDB) e respostas com citação dos trechos consultados.
- Workspaces de fábrica para Contabilidade, Oncologia e Advocacia Penal.
- Conversão local de PDF (texto e digitalizado), Word, Excel, PowerPoint, CSV, ODT, HTML, TXT/MD, imagens e áudio/vídeo.
- OCR local (RapidOCR) e transcrição local de áudio/vídeo (faster-whisper).
- Relatório LGPD e anonimização de textos e arquivos antes do processamento pelo modelo.
- Painel administrativo, auditoria local e monitor de desempenho.
- Instalador de modelos (`Cerra.AI-Instalar-Modelos.bat`) para uso offline após o primeiro download.
- Dados do usuário isolados em `%LOCALAPPDATA%\Cerra.AI`.

### Observações

- Esta distribuição não inclui modo remoto, login Firebase, túnel de acesso nem modelos sem filtro.
- O executável não possui assinatura digital comercial; confira o SHA-256 publicado na release.
