{application, rabbit_jsonrpc_http_channel,
 [{description, "Rabbit JSON-RPC HTTP Channels"},
  {vsn, "0.01"},
  {modules, [
    rabbit_jsonrpc_http_channel
  ]},
  {registered, []},
  {mod, {rabbit_jsonrpc_http_channel, []}},
  {env, [
        {docroot, "priv/www"}
        ]},
  {applications, [kernel, stdlib, rabbitmq_http_server, rabbit_jsonrpc_channel]}]}.
