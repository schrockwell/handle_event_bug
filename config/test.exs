import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :handle_event_bug, HandleEventBugWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "OAVyrFyzjGVY9CDvuCCHAcoqGT2d7JNCf7UDTgHTqYk58Sq7rAHsn3ZdqNAljv9b",
  server: false

# Print only warnings and errors during test
config :logger, level: :warning

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
