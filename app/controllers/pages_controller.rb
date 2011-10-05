class PagesController < ApplicationController

require 'koala'


  def home
    @graph = Koala::Facebook::API.new("2227470867|2.AQCrlX29_Y9W1QlS.3600.1317798000.0-201540|Gp8lLJsXCoaJ3Ci3T2msORapYgk")
    @feed = @graph.get_connections("ladygaga", "feed")
  end

  def test
    @graph = Koala::Facebook::API.new
    #puts @graph.get_object("matthewliu")
    @name = @graph.get_object("matthewliu")
    #@feed = @graph.get_connections("ladygaga", "feed")
  end

end
