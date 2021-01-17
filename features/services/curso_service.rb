class Curso
  include HTTParty
  base_uri CONFIG['base_uri']
  
  def initialize(body, headers)
    @options = { :body => body, :headers => headers }
  end

  def POST
    self.class.post("/cursos", @options)
  end

  def GET(id)
    self.class.get("/cursos/#{id}")
  end

  def GETALL
    self.class.get("/cursos")
  end

  def PUT(id)
    self.class.put("/cursos/#{id}", @options)
  end
end
