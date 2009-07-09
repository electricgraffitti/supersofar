# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_super_session',
  :secret      => '582b8f5cc2db6518a52f99d74321e8945ced6deff1f0c9520c5f70508b97ab6a5bd6d935990c3aebdbac1b352a9c8b25b9232dbc3c8fbdaf5bf9a32d728ccd64'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
ActionController::Base.session_store = :active_record_store
