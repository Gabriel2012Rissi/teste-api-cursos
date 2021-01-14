Dada('a rota da API para o manter dados dos cursos') do
  # já referenciado em 'curso_service'
end
  
Quando('realizar uma requisição do tipo {string}') do |tipo|
  case tipo
  when "POST"
    $response = @curso.POST
  when "GET"
    $get = @curso.GET($response["id"])
  when "PUT"
    $put = @curso.PUT($response["id"])
  else
    expect(tipo).to include("POST", "GET", "PUT")
  end
end
  
Então('a API deverá retornar os dados {string}') do |retorno|
  case retorno
  when "do Cadastro"
    # verificando o que foi enviado na requisição
    expect(JSON.parse($response.body)).to include("titulo", "url", "id")
    expect($response.body).to include_json(
      titulo: (be_a_kind_of String),
      url: (be_a_kind_of String),
      id: (be_a_kind_of Integer)
    )

    # contrato JSON
    expect($response.body).to match_json_schema("curso")

    # imprime os atributos da requisição
    log $response.body
  when "da Consulta"
    # verificando o que foi recebido na requisição
    expect($get.body).to eq($response.body)

    # imprime os atributos da requisição
    log $get.body
  when "da Atualização"
    # verificando o que foi recebido na requisição
    expect($put.body).not_to eq($response.body)

    # imprime os atributos da requisição
    log $put.body
  else
    expect(retorno).to include("do Cadastro", "da Consulta", "da Atualização")
  end
end
  
Então('exibir o código {int}') do |codigo|
  case codigo
  when 201
    expect($response.code).to eq(codigo)
    log($response.code)
  when 200
    expect($get.code).to eq(codigo)
    log($get.code)
  else
    expect($response.code).to eq(codigo)
  end
end
  
Então('a mensagem {string}') do |mensagem|
  case mensagem
  when "Created"
    expect($response.message).to eq(mensagem)
    log($response.message)
  when "OK"
    expect($get.message).to eq(mensagem)
    log($get.message)
  else
    expect($response.message).to eq(mensagem)
  end
end