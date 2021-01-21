Before '@curso' do
  # @titulo = "Curso de " + Faker::ProgrammingLanguage.name.titleize
  # @url = Faker::Internet.url(host: "udemy.com", 
  #   path: "/" + Faker::Internet.slug(words: @titulo, glue: '-'))

  # body = {
  #   "titulo": @titulo,
  #   "url": @url
  # }

  @headers = {
    "Content-Type": "application/json",
    "Accept": "*/*"
  }

  @body = JSON.generate(FactoryBot.attributes_for(:curso))

  @curso = Curso.new(@headers, @body)
end