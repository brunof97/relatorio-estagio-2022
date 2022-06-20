
# Git

O Git é um sistema de controlo de versões grátis, desenhado para fazer o controlo de versões em todo o tipo de projetos. Foi desenvolvido em 2005 por Linus Torvalds, criador do sistema operativo Linux.

### Porquê usar o Source Control

O Source Control é essencial no trabalho de uma equipa de desenvolvimento de software. Ajuda os developers a trabalhar mais rápido e permite às equipas trabalhar com melhor eficiência e agilidade, as equipas podem ter mais developers a trabalhar num projeto.

Com isto existem alguns benefícios em trabalhar com Source Control:

* O facto de podermos voltar a qualquer versão do projeto, permitindo assim descobrir a origem de problemas revertendo para a última versão estável.
* O facto de estarmos a trabalhar em branches permite que vários developers trabalhem no projeto ao mesmo tempo, desempenhando tarefas diferentes, cada uma no seu branch.
* O facto de podermos ver as alterações feitas por cada pessoa, juntamente com uma mensagem a descrever essas alterações, ajuda a perceber o que foi feito no projeto.

### Autenticação

Existem dois tipos de autenticação para o GIT, HTTPS e SSH. Com o HTTPS temos uma autenticação feita de uma forma tradicional com utilizador e password, já com SSH temos uma autenticação feita com uma SSH key. Existem dois tipos de SSH keys, as públicas e as privadas. As chaves privadas apenas são conhecidas pelo utilizador, enquanto que as publicas podem ser partilhadas com o servidor, ao qual o utilizador se quer conectar.

### Porque não fazer alterações no Main Trunk

Não se deve trabalhar no Main Trunk (na maioria dos casos conhecido por master ou main) pois quando forem feitas alterações podem criar conflitos com alterações que estão a ser feitas por outros developers ao mesmo tempo. Por isso é importante o conceito de branch que permite que várias pessoas trabalhem no mesmo projeto em simultâneo sem haver problemas de prejudicar o trabalho uns dos outros.

### Branch

![Exemplo de branch num projeto](.gitbook/assets/branch\_esquema.png)

Um Branch é uma linha de desenvolvimento independente. Serve para haver um local seguro para fazer alterações no projeto, sem comprometer todo o projeto. Este apenas irá afetar o projeto após haver um Merge.

Existe sempre um Main Branch que é o Branch do projeto, existindo também Branches que são criados á medida que o projeto está a decorrer, quando é necessária a implementação de uma nova feature ou quando é necessário haver um fix de um problema no projeto.

Se necessário podemos sempre reverter para o estado de um Branch anterior.

### Push

O comando Push é utilizado quando queremos fazer upload das mudanças de um repositório local para um repositório remoto. Assim as mudanças ficam visíveis para todos os elementos da equipa.

![Esquema antes e depois de um Push](.gitbook/assets/push\_esquema.png)

### Pull

O comando Pull é utilizado para fazer download das alterações feitas no repositório remoto para o repositório local. Este comando é a junção de dois comandos, git fetch e git merge. Numa primeira fase, o git fetch irá fazer o download do repositório remoto e em seguida o git merge irá juntar as alterações feitas com o repositório local.

### Pull Request

O Pull Request é um mecanismo que serve para o developer notificar a sua equipa que uma feature está pronta. Quando uma feature é terminada, o developer apresenta um Pull Request para que a sua equipa faça uma revisão do código e consequentemente aprove as mudanças e faça merge da feature.

É possível fazer Pull Request de uma feature incompleta, Draft Pull Request, para que outros elementos da equipa possam dar palpites de como resolver ou até fazer os seus Commits para a resolução do problema.

#### Passos de um Pull Request

* O developer cria um Branch de uma nova feature no seu repositório local
* É feito Commit e Push para o repositório remoto
* O Pull Request é realizado
* O resto da equipa faz review das alterações, discutindo e pedindo para fazer alterações se necessário
* O diretor do projeto aprova as alterações, faz merge para o repositório oficial e fecha o Pull Request

\pagebreak