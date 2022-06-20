
# Unity

O Unity é um motor de jogo desenvolvido pela Unity Technoligies. Este foi o motor de jogo escolhido para o projeto.

### Scriptable object

Um scriptable object é um data container que serve para guardar grandes quantidades de dados, independente da instancia da classe. Uma das suas utilidades é servir para poupar memória no projeto, evitando cópias de valores.

Ao utilizar os scriptable objects torna mais fácil a alteração de valores e também o debugging, uma vez que estes valores podem ser alterados enquanto o jogo está a correr no editor.

### Animation

O Unity Animation  permite a criação de várias animações num GameObject. Em cada animação é possível alterar as posições do GameObject através de key frames. É possível também executar uma animação diferente conforme o comportamento desejado utilizando o Animation Controller.

### Odin AOT Serialization

O Odin inspector é um plugin para o unity criado com o objetivo de dar aos seus utilizadores um melhor workflow no unity.O AOT (ahead of time) Serialization onde é analisado todo o projeto e guardado todos os assets e scenes do projeto. Depois de realizar o scan do projeto, podemos gerar o DLL mais atualizado antes de fazer a build. Este scan pode ser importante se for adicionada ou retirada do projeto alguma feature que deixe alguns resíduos no projeto, evitando assim problemas futuros.

\pagebreak


