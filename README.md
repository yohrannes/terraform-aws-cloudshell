# terraform-aws-cloudshell

## Modo de Uso:

### 1 - Acesse o cloudshell da AWS.

### 2 - execute os seguintes comandos
#### - Clone o repositório desejado (necessário inserir usuário e senha)
```
git clone <link-do-repo>
```
#### - Inicialize o terraform em modo sudo
```
sudo ./tfinu/.sh
```
#### - Faça o provisionamento dos recursos necessários
```
terraform plan -out "plan"
terraform apply "plan"
```