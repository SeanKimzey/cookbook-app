require 'unirest'


## create a user ##

# response = Unirest.post(
#   "http://localhost:3000/v1/users",
#   parameters: {
#     name: "Mary Kate Carrick",
#     email: "MK@gmail.com",
#     password: "password",
#     password_confirmation: "password"
#   }
# )
# user = response.body

# p user


## Login ##

response = Unirest.post(
  "http://localhost:3000/user_token",
  parameters: {
    auth: {
      email: "sean.kimzey@gmail.com",
      password: "password"
    }
  }
)

p response.body

# Save the JSON web token from the response
jwt = response.body["jwt"]
# Include the jwt in the headers of any future web requests
Unirest.default_header("Authorization", "Bearer #{jwt}")

response = Unirest.get("localhost:3000/v1/recipes")

p response.body
p "*" * 50

## Logout ##

# jwt = ""
# Unirest.clear_default_headers()
