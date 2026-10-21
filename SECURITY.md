# Política de Segurança

## Como relatar uma vulnerabilidade

Não abra uma issue pública para relatar vulnerabilidades. Use o recurso **Report a vulnerability** do GitHub, na aba **Security** deste repositório:

<https://github.com/renato0503/cerraai-publico/security/advisories/new>

Inclua, se possível:

- versão do Cerra.AI (release baixada);
- versão do Windows;
- descrição do problema e impacto;
- passos para reproduzir;
- provas de conceito, se houver.

Não anexe documentos com dados pessoais reais. Trabalhe com dados fictícios ou anonimizados.

## Escopo

Esta política cobre o executável oficial distribuído neste repositório e os arquivos publicados nas releases. O código-fonte não faz parte desta distribuição pública.

## Boas práticas para o usuário

- Baixe o aplicativo apenas pela página oficial de releases.
- Confira o hash SHA-256 publicado em `SHA256SUMS.txt`.
- Mantenha o Windows e o Ollama atualizados.
- Faça backup da pasta `%LOCALAPPDATA%\Cerra.AI` antes de atualizar.
- O Cerra.AI não envia dados para a nuvem; desconfie de qualquer versão que peça login ou conexão externa.
