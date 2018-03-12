require 'unirest'

response = Unirest.get("http://localhost:3000/v1/recipes")

puts JSON.pretty_generate(response.body)