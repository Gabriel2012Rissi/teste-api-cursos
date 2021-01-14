Before '@curso' do
  @titulo = "Curso de " + Faker::ProgrammingLanguage.name.titleize
  @url = Faker::Internet.url(host: "udemy.com", 
    path: "/" + Faker::Internet.slug(words: @titulo, glue: '-'))

  body = {
    "titulo": @titulo,
    "url": @url
  }
  @body = JSON.generate(body)
  
  @headers = {
    "Content-Type": "application/json",
    "Accept": "*/*"
  }

  @curso = Curso.new(@body, @headers)
end