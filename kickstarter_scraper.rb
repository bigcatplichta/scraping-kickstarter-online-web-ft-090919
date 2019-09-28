# require libraries/modules here
require 'nokogiri'
require 'pry'

def create_project_hash
  html = File.read("fixtures/kickstarter.html")
  kickstarter = Nokogiri::HTML(html)
  binding.pry 
end

create_project_hash

# projects: project = kickstarter.css("li.project.grid_4") selects project
# project.css("h2.bbcard_name strong a").text selects title 
# project.css("div.project-thumbnail a img").attribute("src").value selects image
# project.css("p.bbcard_blurb").text selects description
# project.css("ul.project-meta li a span.location-name")