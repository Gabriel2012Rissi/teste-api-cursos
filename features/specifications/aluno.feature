#language: pt
@aluno
Funcionalidade: Manter dados de alunos através da API
Como usuário da API
Eu quero consumir as requisições do cadastro de alunos
A fim de manipular informações no cadastro de alunos

Contexto: Rota da API
  Dada a rota da API para o manter dados dos Alunos
  E a lista de cursos cadastrados

Esquema do Cenário: Manter dados de um novo Aluno
  Quando realizar uma requisição do tipo <tipo> em Alunos
  Então a API deverá retornar os dados <retorno> do Aluno
  E exibir o código <codigo>
  E a mensagem <mensagem>

  Exemplos:
  |  tipo  |    retorno        | codigo | mensagem  |
  | "POST" | "do Cadastro"     |    201 | "Created" |
  | "GET"  | "da Consulta"     |    200 | "OK"      |
  | "PUT"  | "da Alteração"    |    200 | "OK"      |