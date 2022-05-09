# Git

O Git é um sistema de controlo de versões grátis e open source, desenhado para fazer o controlo de versões em todo o tipo de projetos desde projetos pequenos a projetos mais complexos. Foi desenvolvido em 2005 por Linus Torvalds, criador do sistema operativo Linux.

### Branch

![Exemplo de branch num projeto](<../.gitbook/assets/branch esquema.png>)

Um Branch é uma linha de desenvolvimento independente. Serve para haver um local seguro para fazer alterações no projeto, sem comprometer todo o projeto. Nele são guardados os Commits ate que haja um Push.

Existe sempre um Main Branch que é o Branch do projeto e também existem Branches que são criados á medida que o projeto está a decorrer quando é necessária a implementação de uma nova feature ou quando é necessário haver um fix de um problema no projeto.

Se necessário podemos sempre reverter para  o estado de um Branch anterior.&#x20;

### Push

O comando Push é utilizado quando queremos fazer upload das mudanças de um repositório local para um repositório remoto. Assim as mudanças ficam visíveis para todos os elementos da equipa.

![Esquema antes e depois de um Push](<../.gitbook/assets/push esquema.png>)

### Pull

O comando Pull é utilizado para fazer download das alterações feitas no repositório remoto para o repositório local. Este comando é a junção de dois comandos, git fetch e git merge. Numa primeira fase, o git fetch irá fazer o download do repositório remoto e em seguida o git merge irá juntar as alterações feitas com o repositório local.



### Pull Request

O Pull Request é um mecanismo que serve para o developer notificar a sua equipa que uma feature está pronta. Quando uma feature é terminada, o developer apresenta um Pull Request para que a sua equipa faça uma revisão do código e consequentemente aprove as mudanças e faça merge da feature.

É possível fazer Pull Request de uma feature incompleta, Draft Pull Request, para que outros elementos da equipa possam dar palpites de como resolver ou até fazer os seus Commits para a resolução do problema.&#x20;

#### Passos de um Pull Request

* O developer cria um Branch de uma nova feature no seu repositório local
* O developer faz Push para o repositório remoto
* O developer apresenta um Pull Request
* O resto da equipa faz review das alterações, discutindo e pedindo para fazer alterações se necessário
* O diretor do projeto aprova as alterações, faz merge para o repositório oficial e fecha o Pull Request&#x20;

