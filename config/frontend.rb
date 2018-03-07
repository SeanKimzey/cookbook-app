require 'unirest'

response = Unirest.get("http://localhost:3000/the_recipes")

puts JSON.pretty_generate(response.body)