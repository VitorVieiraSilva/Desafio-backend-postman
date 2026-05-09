# Desafio BDD com Postman + Newman

## 📖 História
Como gestor, quero utilizar uma API pública para realizar testes funcionais.

## ✅ Critérios de Aceite
Os cenários de teste foram especificados em Gherkin no arquivo `features/consulta_cep.feature` e incluem:
- **Consultar CEP válido**: Testa o fluxo básico da API com um CEP válido.
- **Consultar por endereço**: Testa um fluxo alternativo, consultando por endereço em vez de CEP.
- **Consultar CEP inválido**: Testa um fluxo de exceção com um CEP inválido.

## 🚀 API Utilizada
[ViaCEP](https://viacep.com.br) — API pública para consulta de CEPs brasileiros.

## 🧩 Estrutura do Projeto
- `DesafioApiViaCep.postman_collection.json` → Coleção exportada do Postman com os testes.
- `features/consulta_cep.feature` → Cenários de teste em Gherkin.
- `reports/newman.html` → Relatório HTML gerado pelo Newman após a execução.
- `README.md` → Este arquivo com instruções.
- `.github/workflows/ci.yml` → Workflow do GitHub Actions para execução manual e automatizada (CI/CD).

## ▶️ Execução Local
Para executar os testes localmente:

1. **Instale o Newman** (CLI do Postman):
   ```bash
   npm install -g newman
   ```

2. **Instale o reporter HTML** (opcional, para gerar relatórios visuais):
   ```bash
   npm install -g newman-reporter-html
   ```

3. **Execute a coleção**:
   ```bash
   newman run DesafioApiViaCep.postman_collection.json --reporters html --reporter-html-export reports/newman.html
   ```

4. **Visualize o relatório**: Abra o arquivo `reports/newman.html` em um navegador.

## 🚀 Execução via GitHub Actions
O projeto inclui um workflow automatizado no GitHub Actions que executa os testes sempre que há um push ou pull request na branch `main`.
e possui opção de execução manual `dispatch`.

### Como executar manualmente:
- Acesse a aba **Actions** no repositório no GitHub.
- Seleciona o workflow desafioApi.
- No seletor Run workflow, selecione a branch desejada e clique no botão Run workflow.
- Após a execução, baixe o relatório gerado em `reports/newman.html` a partir dos artefatos da execução.

Se precisar executar manualmente no GitHub, vá para a aba Actions, selecione o workflow "CI" e clique em "Run workflow".
