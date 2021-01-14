class Aluno
  include HTTParty
  base_uri 'http://localhost:3000'
  
  def initialize(body, headers)
    @options = { :body => body, :headers => headers }
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