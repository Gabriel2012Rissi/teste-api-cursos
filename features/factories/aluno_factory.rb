def sort_id
  @curso = Curso.new(@headers, @body)
  $get = @curso.GETALL
  $index = Faker::Number.between(from: 0, to: $get.length - 1)
  @cursoId = $get[$index]["id"]
  @cursoId
end

FactoryBot.define do  
  factory :aluno do
    nome { Faker::Name.unique.name }
    cursoId { sort_id }
  end
end