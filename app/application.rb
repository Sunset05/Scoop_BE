require 'pry'
require 'json'

class Application

  def call(env)
    resp = Rack::Response
    req = Rack::Request.new(env)
    # route to receieve all students
    if req.path.match(/recipes/)
      return [ 
        200, 
        { 'Content-type' => 'application/json' },
        [{:recipes => Recipe.all}.to_json(:include => :ingredients)]
      ]
      else
      resp.write "Path not Found"
    end
    resp.finish
  end
    # case req.path_info
    # when /recipes/
    #   [200,{ 'Content-type' => 'application/json' },[{:recipes => Recipe.all}.to_json(:include => :ingredients)]]
    # else
    #   [404, {"Content-Type" => "text/html"}, ["I'm Lost!"]]
    # end
end