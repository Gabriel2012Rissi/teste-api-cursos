#language: pt
@curso
Funcionalidade: Manter dados de cursos através da API
Como usuário da API
Eu quero consumir as requisições do cadastro de cursos
A fim de manipular informações no cadastro de cursos

Contexto: Rota da API
  Dada a rota da API para o manter dados dos cursos

Cenário: Manter dados de um novo Curso
  Quando realizar uma requisição do tipo <tipo>
  Então a API deverá retornar os dados <retorno>
  E exibir o código <codigo>
  E a mensagem <mensagem>

  Exemplos:
  |  tipo  |    retorno        | codigo | mensagem  |
  | "POST" | "do Cadastro"     |    201 | "Created" |
  | "GET"  | "da Consulta"     |    200 | "OK"      |
  | "PUT"  | "da Atualização"  |    200 | "OK"      |