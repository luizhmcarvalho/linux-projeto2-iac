# Script de Configuração de Servidor Web Apache

Este projeto contém um script de shell (`configurar_servidor.sh`) para automatizar a configuração de um servidor web básico em um sistema Ubuntu 22.04. O script instala e configura o Apache2 e implanta um site de exemplo baixado do GitHub, tornando o processo de setup rápido e livre de erros.

## Funcionalidades

O script executa as seguintes tarefas de forma sequencial:

-   **Atualização do Sistema:** Atualiza a lista de pacotes (`apt update`) e os pacotes já instalados (`apt upgrade`).
-   **Instalação de Dependências:** Instala o servidor web `apache2` e o utilitário `unzip`.
-   **Download da Aplicação:** Baixa um site de exemplo em formato `.zip` a partir de um repositório no GitHub.
-   **Implantação (Deploy):** Extrai os arquivos do site e os copia para o diretório raiz do Apache (`/var/www/html`), tornando-o publicamente acessível.

## Pré-requisitos

Antes de executar o script, certifique-se de que você possui:

-   **Sistema Operacional:** Ubuntu 22.04 (ou uma distribuição baseada em Debian compatível).
-   **Acesso:** Privilégios de superusuário (`root`) ou um usuário com permissões `sudo`.
-   **Conectividade:** Acesso à internet para baixar pacotes e a aplicação de exemplo.

## Como Usar

Siga os passos abaixo para executar a configuração.

1.  **Crie o arquivo do script**
    Crie o arquivo em seu sistema com seu editor de texto preferido, como o `nano`.

    ```sh
    nano configurar_servidor.sh
    ```

2.  **Cole o Conteúdo**
    Copie o conteúdo do script e cole-o no arquivo que você acabou de criar. Salve e feche o editor (em `nano`, pressione `Ctrl+X`, depois `Y` e `Enter`).

3.  **Dê Permissão de Execução**
    No terminal, torne o arquivo executável com o seguinte comando:

    ```sh
    chmod +x configurar_servidor.sh
    ```

4.  **Execute o Script**
    Execute o script com privilégios de superusuário para permitir a instalação de pacotes e a cópia de arquivos nos diretórios do sistema.

    ```sh
    sudo ./configurar_servidor.sh
    ```

5.  **Verificação**
    Após a conclusão do script, abra seu navegador de internet e acesse o endereço IP da sua máquina virtual ou servidor. Você deverá ver a página de exemplo que foi implantada.

    ```
    http://SEU_ENDERECO_DE_IP
    ```

## Autor

Este script foi gerado por **Luiz Carvalho** como projeto da formação Linux Fandamentals. A aplicação de exemplo foi desenvolvida por **Denilson Bonatti**.

## Licença

Este projeto é distribuído sob a licença MIT.