Before '@aluno' do
    @curso = Curso.new(@body, @headers)
    $get = @curso.GETALL
    $index = Faker::Number.between(from: 0, to: $get.length - 1)
    @cursoId = $get[$index]["id"]
    @nome = Faker::Name.name

    body = {
        "nome": @nome,
        "cursoId": @cursoId
    }
    @body = JSON.generate(body)
    
    @headers = {
        "Content-Type": "application/json",
        "Accept": "*/*"
    }

    @aluno = Aluno.new(@body, @headers)
end