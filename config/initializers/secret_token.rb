# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.

# Add /config.initializers/secret_token.rb to .gitignore
Blog::Application.config.secret_key_base = '34f4b6e71c6959cd785ce4c4f74f5de5dd3571a4e12c59ade40333271e297686161c3fa8c529450c366a3d47f5af7bb92bd52c6457230c7b792a530d7beb724d'
