# Programação Back-End: Aula do dia 27/01 - Configuração de Ambiente

Nesta aula, o foco foi preparar o computador. Configuramos do zero o ambiente de desenvolvimento para garantir que todas as ferramentas estejam conversando entre si e que a estrutura de arquivos seja escalável.

---

### 🛠️ Configurações Iniciais e Git

O primeiro passo foi estabelecer a identidade da máquina e a comunicação com o **GitHub**.

* **Instalação do Git:** Preparação do controle de versão.
* **Configuração de Identidade:** Utilizamos os seguintes comandos para vincular a máquina local à conta global:

git config --global user.email "seu-email@exemplo.com"
git config --global user.name "Seu Nome"

---


* **VS Code:** Instalação e sincronização com o perfil do GitHub para manter extensões e preferências em qualquer lugar.

---

### 🎨 Customização e Colaboração no VS Code

Para otimizar a produtividade, separamos o ambiente por contexto:

* **Perfis Customizados:** Criamos perfis distintos para **Web** e **Flutter**, permitindo extensões específicas para cada tecnologia sem poluir o editor.
* **Live Share:** Aprendemos a utilizar a extensão para codificação colaborativa em tempo real.

---

### 📂 Organização de Workspace via Terminal

Direto no terminal (CMD/PowerShell), estruturamos nossa hierarquia de pastas para o curso.

**Comandos utilizados:**

* `mkdir`: Criação de novos diretórios.
* `cd`: Navegação entre pastas.
* `type nul > readme.md`: Criação de arquivos vazios.

**Estrutura criada:**

/Hope
├── /Mobile
    ├──\README
├── /BackEnd
├── /FrontEnd
└── /Projeto

## Conteúdo da Aula Anterior


## Introdução ao Desenvolvimento Mobile

### Tipos de Desenvolvimentos

- Nativo
    - Android:
        - SDK: Android SDK;
        - IDE: Android Studio;
        - Lingaugens: Kotlin e Java;
        - Ambientes: Mac, Windows e Linux.
    
    - IOS:
        - SDK: Cocoa Touch;
        - IDE: Xcode;
        - Linguagens: Swift / Objectype-C;
        - Ambiente: Mac.

- Multiplataforma
    - React Native:
        - SDK: Node.JS;
        - IDE: VSCode;
        - Linguagens: JavaScript / TypeScript;
        - Ambientes: Mac, Windows e Linux;

    - Flutter:
        - SDK: Flutter SDK;
        - IDE: VSCode, Android Studio;
        - Linguagem: Dart;
        - Ambientes: Mac, Windows e Linux;

## Preparação do Ambiente de Desenvolvimento
cd
### Instalação do FlutterSDK
- download do arquivo ZIP na página flutter.dev
- inclusão do flutter na pasta C:\src
- inclusão do flutter\bin nas varáveis de ambiente
- teste o flutter --version

### Instalação do AndroidSDK
- download do Android SDK - Command Line Tools
- adicionar o Command-line ao c:\src\AndroidSDK
- adicionar o SDKManager as Variáveis de Ambiente
- download dos pacotes
    - emulador
    - platforms
    - platform-tools
    - build-tools
- adicionar ADB e o Emulator as Variáveis de Ambiente
- Criação da Imagem do Emulador - via sdkmanager
- Build do Emulador - via sdkmanager

### Criação de Projetos e Códigos da Linha de Comando

- Criação de Projetos
    - Flutter create nome_do_projeto
        - Flags(parâmetros):
            - --empty: Cria um aplicativo "vazio" (Hello World!);
            - --platforms: Permite a seleção de uma plataforma de desenvolvimento;
            EX.: --plataforms=android (criação do projeto será somente para a plataforma Android).
    - Exemplo de criação de um aplicativo Android vazio:
        - flutter create nome_do_app --empty --platforms=android;
        - OBS: Nome do aplicativo: todas as letras minúsculas e separação de palavras com "_".
    - Flutter Doctor:
        - Permite correção de pequenos problemas no flutter e identificação dos parâmetros funcionais em relação as plataformas de desenvolvimento;
        - Sempre rodar o flutter doctor no começo do desenvolvimento.
    - Flutter Clean:
        - Limpa cache do build(apaga o apk anterior).
    - Flutter run - v:
        - Build do app (apk).
        
