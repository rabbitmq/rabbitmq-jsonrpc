{application, rabbit_jsonrpc,
 [{description, "Rabbit JSON-RPC"},
  {vsn, "0.01"},
  {modules, [
    rabbit_jsonrpc
  ]},
  {registered, []},
  {mod, {rabbit_jsonrpc, []}},
  {env, []},
  {applications, [kernel, stdlib, rabbit_mochiweb]}]}.
