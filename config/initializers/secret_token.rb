# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.

# Add /config.initializers/secret_token.rb to .gitignore
Blog::Application.config.secret_key_base = "2e934720744a676ce56de6afafede97fce9fe094f846ce2906a0a5134e209721a9ba62478a4ff5ec822ce5a4d659872ce2806edea49680b1b272a83314ad253b"
