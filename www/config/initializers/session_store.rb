# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_www_session',
  :secret      => '7e142463a767c871b17b44d9e4755b474d5768104161e9456c85ff64ecc7f36957e6afc9e0a02de08d72b911c19b1a41bb99fbbaab9b94383b3f8d554448d8ae'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
