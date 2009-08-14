# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_empowercommunities_session',
  :secret      => '979bbfb6ccb717bccb74d1e52e83b50dcd7a42ea8b39962f11b026d09342d782c73048960a424fba0bc028fdca5b9748f33655ee1fb9956f4d6135b4c205690a'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
