class Aluno
  include HTTParty
  base_uri ENV['API_HOST']
  
  def initialize(headers, body)
    @options = { :headers => headers, :body => body }
  end

  def POST
    self.class.post("/alunos", @options)
  end

  def GET(id)
    self.class.get("/alunos/#{id}")
  end

  def PUT(id)
    self.class.put("/alunos/#{id}", @options)
  end
end
