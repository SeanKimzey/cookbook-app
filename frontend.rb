require 'unirest'

response = Unirest.delete("http://localhost:3000/v1/recipes/4")

puts JSON.pretty_generate(response.body)