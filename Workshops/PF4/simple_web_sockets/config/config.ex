config :my_app, SimpleWebSockets,
  port: 3000,
  path: "/my_ws",
  max_connections: 10000, # don't accept connections if server already has this number of connections
  max_connection_age: :infinity, # force to disconnect a connection if the duration passed. if :infinity is set, do nothing.
  idle_timeout: 120_000, # disconnect if no event comes on a connection during this duration
  reuse_port: true, # TCP SO_REUSEPORT flag
  show_debug_logs: true,
  transmission_limit: [
    capacity: 50,  # if 50 frames are sent on a connection
    duration: 2000 # in 2 seconds, disconnect it.
  ]
