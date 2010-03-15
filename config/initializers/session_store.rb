# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_govsultations_session',
  :secret      => '106c25e6e51c5866ca588bdd510223a2811f9f07c03e9bbcfd429e0ec5a57f18fd77f266daab6125e73d46d34a517925593703244188b81b9f55f55d6dcd07e3'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
