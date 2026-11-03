# AWS EC2 Infrastructure com Terraform

Infraestrutura como código (IaC) para provisionar e gerenciar instâncias EC2 na AWS usando **Terraform**.

## Sumário

- [Início rápido](#início-rápido)
- [Pré-requisitos](#pré-requisitos)
- [Recursos provisionados](#recursos-provisionados)
- [Comandos](#comandos)
- [Estrutura do repositório](#estrutura-do-repositório)
- [Limpeza](#limpeza)

## Início rápido

```bash
aws configure       # autentica a AWS CLI
terraform init      # baixa os providers
terraform plan      # mostra o que será criado
terraform apply     # cria as instâncias (confirme com "yes")
```

## Pré-requisitos

| Ferramenta | Requisito |
|:-----------|:----------|
| [Terraform CLI](https://developer.hashicorp.com/terraform/downloads) | versão `>= 1.0.0` |
| [AWS CLI](https://aws.amazon.com/cli/) | instalada e autenticada |
| Credenciais AWS | `AWS_ACCESS_KEY_ID` e `AWS_SECRET_ACCESS_KEY` configuradas localmente |

## Recursos provisionados

Duas instâncias EC2 na região `sa-east-1`:

| Parâmetro | Servidor 1 (App) | Servidor 2 (DB) |
|:----------|:-----------------|:----------------|
| **Nome (Tag)** | `Cobaia1-IAM` | `Cobaia2-IAM` |
| **Instance Type** | `t3.micro` | `t3.micro` |
| **Base AMI ID** | `ami-0064a1e5f976e938b` | `ami-0884c330d44106119` |
| **Região AWS** | `sa-east-1` | `sa-east-1` |

## Comandos

Execute a partir da raiz do repositório:

| Etapa | Comando | O que faz |
|:------|:--------|:----------|
| 1. Inicializar | `terraform init` | Baixa os providers necessários (como o da AWS) |
| 2. Validar | `terraform validate` | Garante que a sintaxe dos arquivos `.tf` está correta |
| 3. Planejar | `terraform plan` | Dry-run: mostra o que será criado, alterado ou destruído, sem aplicar nada |
| 4. Aplicar | `terraform apply` | Cria as instâncias na AWS (confirme digitando `yes`) |
| 5. Destruir | `terraform destroy` | Remove todos os recursos criados pelo Terraform |

## Estrutura do repositório

```
.
├── .gitignore   # Ignora tfstate, arquivos temporários e chaves
├── main.tf      # Declaração dos recursos AWS (EC2)
└── README.md    # Documentação do repositório
```

## Limpeza

Para evitar custos, remova os recursos quando terminar:

```bash
terraform destroy
```

## Feito por: Eduardo Zamengo do Nascimento e Danilo Santos dos Reis
