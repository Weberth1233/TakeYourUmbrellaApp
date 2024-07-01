# take_your_umbrella

## Descrição do Projeto: TakeYourUmbrellaApp
Objetivo do Projeto:
O "TakeYourUmbrellaApp" é um aplicativo desenvolvido em Flutter com o objetivo de fornecer previsões meteorológicas precisas e ajudar os usuários a decidir se precisam levar um guarda-chuva ou não. Utiliza a API da HG Brasil para obter dados meteorológicos.

### Estrutura do Projeto:

#### Tela Inicial:

Contém um campo de entrada para o usuário inserir o nome da cidade.
Um botão de busca que, ao ser pressionado, faz uma requisição à API para obter a previsão do tempo para a cidade informada.
Exibe as informações meteorológicas retornadas pela API, como temperatura, condição do tempo (ensolarado, nublado, chuvoso) e uma sugestão se é necessário levar um guarda-chuva.

#### Backend (Lógica de Requisição):
Foi utilizada a biblioteca dio para realizar as requisições HTTP à API da HG Brasil.
A chave da API foi deixada exposta no código propositalmente para facilitar os testes durante o desenvolvimento. 

#### Design:
- O design do aplicativo está disponível no Figma e pode ser acessado aqui.
https://www.figma.com/design/hA2ZjyRw81PEsR9C4nCgJj/TakeYourUmbrellaApp?node-id=0-1&t=l4zWZHjoUxjkqKlr-0
- O design segue uma estética simples e intuitiva, focada na usabilidade e na clareza das informações meteorológicas.

![image](https://github.com/Weberth1233/takeYourUmbrellaApp/assets/51481418/01968275-d9dc-4530-a924-e62c41057aff)
![image](https://github.com/Weberth1233/takeYourUmbrellaApp/assets/51481418/f5a86426-e25f-4348-87c0-8bd9924b5fdb)
![image](https://github.com/Weberth1233/takeYourUmbrellaApp/assets/51481418/791e2708-5688-4d28-a7ff-d88480cc1003)

### Passo a Passo para Rodar o Projeto TakeYourUmbrellaApp

Clonar o Repositório do GitHub
Primeiro, você precisará clonar o repositório do GitHub para a sua máquina local. Abra o terminal e execute o seguinte comando:
Copiar código
- git clone https://github.com/Weberth1233/takeYourUmbrellaApp.git

Navegar até o Diretório do Projeto
Após clonar o repositório, navegue até o diretório do projeto:
- cd takeYourUmbrellaApp

Instalar as Dependências
Dentro do diretório do projeto, execute o comando abaixo para instalar todas as dependências listadas no arquivo pubspec.yaml:
- flutter pub get

Rodar o Aplicativo
Com as dependências instaladas, você pode rodar o aplicativo com o comando:
- flutter run
Este comando compilará e executará o aplicativo em um dispositivo ou emulador conectado.

Passos Adicionais (Opcional)
Configurar a Chave da API: Lembre-se de configurar a sua chave da API no código, substituindo 'SUA_CHAVE_API_AQUI' pela chave correta. 
Abra o arquivo onde a chave está declarada e faça a substituição:
- final apiKey = 'SUA_CHAVE_API_AQUI';
Configurar o Emulador: Caso não tenha um dispositivo físico conectado, você pode usar um emulador. Certifique-se de ter um emulador Android ou iOS configurado. Para configurar um emulador, siga as instruções de configuração do seu ambiente de desenvolvimento (Android Studio, Xcode, etc.).

Resolução de Problemas
Atualização do Flutter: Certifique-se de que você tem a versão mais recente do Flutter instalada. Você pode atualizar o Flutter com o comando:
- flutter upgrade

Verificar Configuração do Ambiente: Se encontrar problemas durante a execução, verifique a configuração do ambiente Flutter com o comando:
- flutter doctor
Este comando fornecerá informações detalhadas sobre a configuração do ambiente e possíveis problemas que precisam ser resolvidos.

