# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.

# Add /config.initializers/secret_token.rb to .gitignore
Blog::Application.config.secret_key_base = '6a37f65d4a9dcf98662406c66b8a06ada5a4ff374ee27686fe89a5c16312aafa7ffefd38bebba0a03b0bc8ba60fdc034ef9922a96a5574d734be1b3d4b029872'
