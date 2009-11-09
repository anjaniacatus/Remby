# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_cvnew_session',
  :secret      => '3aeeec47d4f1b388ac7c2952e548e1a5f31ea5fdf8a8212acf3ee79863dd2d258df8491c733fe2123dcfc3bd685bc72d5a6b8ba167402b9e4e1e73e73792ea41'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
