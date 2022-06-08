
# Descrição do Trabalho

Na Cooperativa de Profissionais de Desenvolvimento de Software (CPDS) os membros encabeçam vários projetos. Como parte do meu estágio estive inserido num desses projetos, um Turn base mobile RPG.

Este jogo pertence a um cliente da CPDS que é dono de um pequeno estúdio independente americano, a "Red Blue Games". O seu fundador e nosso cliente é um game designer que desenvolve pequenos projetos de videojogos e jogos de tabuleiro. &#x20;

### Criação de um GitBook para o relatório&#x20;

Para a realização do presente relatório de estágio, foi-me  sugerido a criação de um GitBook, de modo a que os orientadores conseguissem ver as alterações que eram feitas à medida que o relatório ia sendo escrito. Para isso criou-se um novo repositório no meu GitHub no qual existem dois branches, master e develop. Com base no GitBook e num flow de desenvolvimento de Git, foi possível fazer alterações ao relatório que foram revistas incrementalmente, colocando os orientadores como reviwers para poderem ver as alterações feitas e se necessário fazer algum comentário sobre o que pode ser melhorado. Quando o Pull Request é aceite, as alterações são efetuadas no branch master.

![Esquema de  branches](.gitbook/assets/github.png)

### Quality Assurance (QA) e Bug fixing

Nos primeiros dias do meu estágio na Cooperativa, realizei um pouco de Quality Assurance (QA) com o objetivo de testar o projeto e fazer um levantamento de Bugs e features que pudessem ser melhoradas no jogo.

Após o primeiro levantamento de Bugs foram criadas novas tasks no ClickUp de modo a organizar o trabalho e oferecer visibilidade das tarefas aos coordenadores. Seguidamente tive de tentar encontrar a origem dos Bugs encontrados através de debuging do código, tentando encontrar alguma irregularidade que possa estar na origem do problema ao qual quero resolver. Para isso algumas das ferramentas que me foram bastante uteis  foram a utilização de Assertions e Debug Logs que me ajudavam a visualizar os estados de algumas variáveis ou os seus valores na consola do Unity de modo a perceber melhor como está a ser executado o código.

Exemplo de Debug Log

```lang-c#
Debug.LogError( $"endZonePoints{endZonePoints.Count}" );
```

Exempolo de Assertion

```lang-c#
Assert.IsTrue( CurrentBoardState != null );
```


Quando tentamos resolver um bug temos duas opções, resolver o bug por completo ou fazer um hot-fix. Um hot-fix é usado quando queremos uma resolução rápida do problema para lançar uma feature nova. Ao usar um hot-fix podemos inadvertidamente criar Technical Debt, ou seja , implica voltar ao código mias tarde para melhorar a resolução ou a performance do que foi alterado, o que por vezes não é a melhor solução pois estamos a deixar para mais tarde o que se pode fazer no momento, mas por vezes é a forma de conseguir que a feature seja lançada no tempo previsto.

### Implementação de novas features no jogo

Com o decorrer do estágio foi-me pedido o melhoramento e a implementação de novas features no jogo.&#x20;

#### Implementação de novos steps no Tutorial

No projeto os tutoriais estão guardados num GameObject chamado Tutorial Manager, onde existem listas de Tutoriais.&#x20;

Cada Tutorial contém:&#x20;

* Id
* Screen onde vai ser aplicado
* Lista de Tutorial Indicators

Por sua vez cada Tutorial Indicator contém:

* Id
* Prefab do Tutorial
* Mensagem do Tutorial
* Referencia para o botão a ser pressionado (caso seja aplicável)

Uma das tarefas que desempenhei na CPDS foi a implementação de novos passos no tutorial do jogo. Esta tarefa consistiu em adicionar novos steps em tutoriais ja existentes no projeto e na criação de novos tutoriais.

Passos para acrescentar novos passos a um tutorial:

* Criar um novo Turorial Indicator&#x20;
* Colocar o novo Tutorial Indicator no tutorial desejado

Passos para criar um novo Tutorial:

* Criar um novo Tutorial no Tutorial Manager
* Criar os Tutorial Indicators necessários para esse Tutorial
* Acrescentar os Tutorial Indicators ao novo Tutorial

Para isso, nos tutoriais que era necessário acrescentar passos a um tutorial já existente tinha de criar um novo tutorial indicador e depois colocar o mesmo no tutorial desejado no tutorial manager. Se o tutorial desejado não existisse, criou-se um novo tutorial novo no tutorial manager e depois disso criar os tutorial indicators do tutorial.

![Tutorial Manager na Hierarquia do projeto](.gitbook/assets/tutorial1.png)
\newline
![Tutorial Manager no Inspector](.gitbook/assets/tutorial2.png)
\newline
![Tutorial Indicator](.gitbook/assets/tutorial3.png)

#### Correção de preços de items e In-app products

Ainda nos melhoramentos do jogo, atualizou-se os preços dos items no jogo e nos In-app products, que são produtos que podem ser adquiridos diretamente na aplicação, onde peguei numa spreeadsheet facultada pelo cliente e atualizei os preços e descrição dos items no scriptable object dos items do jogo, bem como na Google Play Console, onde fiquei a perceber como funciona o sistema de pagamento e de atualização de valores da Google.

![Scriptable object ond eforam alterados os dados do items](<.gitbook/assets/scriptable_object.png>)
\newline
![Google Play Console](<.gitbook/assets/google_play_console.png>)
\newline
![In App Products](<.gitbook/assets/google_play_console_2.png>)


#### Implementação de uma animação do Battle Eye

Quando o jogador procura uma nova partida, aparece um pop-up até que seja encontrado um adversário. Era necessário dar feedback ao jogador que havia de facto uma procura a acontecer nesse momento. Para isso recorreu-se á animação do "Batte Eye", um elemtento 2D, onde se procedeu á animação do mesmo, animando a pupila para andar de um lado para o outro, simulando o movimento do olho. Para isso pegou-se na imagem e no Photoshop separar os dois elementos da imagem, olho e pupila, de modo a ter dois elementos para realizar a animação. Após obter os dois elementos da imagem utilizou-se o animator do unity para fazer a animação onde o olho agora fica a olhar de um lado para o outro enquanto procura por um adversário.

![Imagem "Battle Eye" que foi animada no Unity](<.gitbook/assets/Battle_Eye.png>)

#### Trocar imagens nos bundles de Fairy Dust

O projeto recorre a uma moeda de jogo chamada Fairy Dust. Os jogadores recorrem a essa moeda para comprar itens nesse jogo. O Fairy Dust pode também ser utilizado para adquirir o battle pass que irá permitir ao jogador obter mais itens.

Por isso é bastante importante ter nos bundles onde podemos comprar Fairy Dust na aplicação umas imagens apelativas e que demonstrem ao utilizador o tipo de bundle que está prestes a comprar.

Foi me fornecida numa imagem que continha todos os elementos a ser utilizados e no Photoshop, separou-se esses elementos sempre com o cuidado de o tamanho da imagem ser em Power Of Two, ou seja deveriam ter o mesmo numero de pixéis em altura e largura e esses têm de ser exponenciais de 2 (2,4,8,16,32...).É necessário o tamanho ser em Power Of Two para não aumentar o tamanho da aplicação. Por exemplo as imagens podem ser 1024x1024 pixéis. Criou-se também uma imagem para um novo item de 200 Fairy Dust para substituir as color pallets que foram retirados do jogo a pedido do cliente e eram algumas das recompensas do Battle Pass.

![](<.gitbook/assets/bundle_5.png>) ![](<../.gitbook/assets/bundle_20.png>) ![](<../.gitbook/assets/200_fairy_dust.png>) ![](<../.gitbook/assets/bundle_50.png>) ![](<../.gitbook/assets/bundle_100.png>)

#### Remoção das color pallets&#x20;

Como já foi referido, as color palllets foram removidas do jogo pois na ótica do cliente, o trabalho que dava a criação das color pallets de modo a obter um resultado satisfatório não compensava o pouco que iriam acrescentar ao jogo, sendo estas substituídas por outros items.&#x20;

Para remover esta feature, começou-se por ver onde estava a ser utilizada, anotando todas as referencias à color pallet no código do projeto. Após terem sido obtidas todas as referencias é iniciado o processo de remoção das mesmas removendo-se uma referência de cada vez. Cada vez que era removida uma referencia à color pallet, era necessário testar o jogo para verificar se estava tudo funcional. Quando se verificava que estava tudo funcional, era feito um commit dessa remoção para o branch. Este processo foi repetido até que todas as referencias estivessem removidas.

![Delete Color Pallet branch](.gitbook/assets/collorPallet.png)

#### Utilização de 1 SuperMove por jogada

Os SuperMoves são ataques especiais que o jogador adquire quando um dos seus personagens morre. No inicio os jogadores apenas poderiam utilizar cada SuperMove uma vez por jogo, mas durante uma reunião com o cliente, o mesmo propôs a utilização de cada SuperMove uma vez em cada jogada, dependendo dos SuperMoves disponíveis, uma quando morre o seu primeiro jogador, duas quando morre o segundo e sempre assim até ao máximo de quatro SuperMoves. Como não se sabia se a feature ia ser definitiva, decidiu-se criar esta feature como uma Feature Flag, ou seja, criou-se um booleano que se estivesse a true a feature estava ligada e se estivesse a false estaria desligada, de modo a que se pudesse testar das duas maneiras mudando apenas o valor de uma única variável. &#x20;

\pagebreak
