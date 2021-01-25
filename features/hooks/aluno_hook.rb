Before '@aluno' do
    # @nome = Faker::Name.name
    # @curso = Curso.new(@body, @headers)
    # $get = @curso.GETALL
    # $index = Faker::Number.between(from: 0, to: $get.length - 1)
    # @curso = $get[$index]["id"]

    @headers = {
        "Content-Type": "application/json",
        "Accept": "*/*"
    }

    # body = {
    #     "nome": @nome,
    #     "curso": @curso
    # }
    @body = JSON.generate(FactoryBot.attributes_for(:aluno))

    @aluno = Aluno.new(@headers, @body)
end