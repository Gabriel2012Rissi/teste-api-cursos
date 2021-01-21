FactoryBot.define do
  factory :curso do
    titulo { "Curso de " + Faker::ProgrammingLanguage.name.titleize }
    url { Faker::Internet.url(host: "udemy.com", 
      path: "/" + Faker::Internet.slug(words: titulo, glue: '-')) }
  end
end