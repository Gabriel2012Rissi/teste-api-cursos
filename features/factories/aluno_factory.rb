def sort_id
  @curso = Curso.new(@headers, @body)
  $get = @curso.GETALL
  $index = Faker::Number.between(from: 0, to: $get.length - 1)
  @id = $get[$index]["id"]
  @id
end

FactoryBot.define do  
  factory :aluno do
    nome { Faker::Name.unique.name }
    curso { sort_id }
  end
end