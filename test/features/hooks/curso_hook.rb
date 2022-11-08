Before '@curso' do
  # @titulo = "Curso de " + Faker::ProgrammingLanguage.name.titleize
  # @url = Faker::Internet.url(host: "udemy.com", 
  #   path: "/" + Faker::Internet.slug(words: @titulo, glue: '-'))

  @headers = {
    "Content-Type": "application/json",
    "Accept": "*/*"
  }

  # body = {
  #   "titulo": @titulo,
  #   "url": @url
  # }
  @body = JSON.generate(FactoryBot.attributes_for(:curso))

  @curso = Curso.new(@headers, @body)
end