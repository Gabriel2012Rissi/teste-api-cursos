Dada('a rota da API para o manter dados dos Alunos') do
  # já referenciado em 'aluno_service'
end

Dada('a lista de cursos cadastrados') do
  $getAll = @curso.GETALL
  expect($getAll.length).to be > 0
end

Quando('realizar uma requisição do tipo {string} em Alunos') do |tipo|
  case tipo
  when "POST"
    $response = @aluno.POST
  when "GET"
    $get = @aluno.GET($response["id"])
  when "PUT"
    $put = @aluno.PUT($response["id"])
  else
    expect(tipo).to include("POST", "GET", "PUT")
  end
end

Então('a API deverá retornar os dados {string} do Aluno') do |retorno|
  case retorno
  when "do Cadastro"
    # verificando o que foi enviado na requisição
    expect(JSON.parse($response.body)).to include("nome", "cursoId", "id")
    expect($response.body).to include_json(
      nome: (be_a_kind_of String),
      cursoId: (be_a_kind_of Integer),
      id: (be_a_kind_of Integer)
    )

    # contrato JSON
    expect($response.body).to match_json_schema("aluno")
  
    # imprime os atributos da requisição
    log $response.body
  when "da Consulta"
    # verificando o que foi recebido na requisição
    expect($get.body).to eq($response.body)

    # imprime os atributos da requisição
    log $get.body
  when "da Alteração"
    # verificando o que foi recebido na requisição
    expect($put.body).not_to eq($response.body)

    # imprime os atributos da requisição
    log $put.body
  else
    expect(retorno).to include("do Cadastro", "da Consulta", "da Alteração")
  end
end