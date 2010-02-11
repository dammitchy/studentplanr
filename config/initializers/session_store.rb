# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_studentplanr_session',
  :secret      => '3cced1f1bad5b56ae4462032eb2f413d1aee46e370a594b918a46512f8c4af8773ae7bfabbd76f73bf07c7b816182ec686469f9101bc98460f0fc531b4c063f4'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
