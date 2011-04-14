{application, rabbitmq_jsonrpc,
 [{description, "Rabbit JSON-RPC"},
  {vsn, "%%VSN%%"},
  {modules, [
    rabbit_jsonrpc
  ]},
  {registered, []},
  {mod, {rabbit_jsonrpc, []}},
  {env, []},
  {applications, [kernel, stdlib, rabbitmq_mochiweb]}]}.
