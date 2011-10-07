-module(rabbit_jsonrpc).

-behaviour(application).
-export([start/2,stop/1]).

start(_Type, _StartArgs) ->
    RpcContext = case application:get_env(?MODULE, context) of
                     undefined -> "rpc";
                     {ok, V} -> V
                 end,
    rabbit_mochiweb:register_context_handler(
        jsonrpc,
        RpcContext,
        fun(_, Req) ->
            case rfc4627_jsonrpc_mochiweb:handle("/" ++ RpcContext, Req) of
                no_match ->
                    Req:not_found();
                {ok, Response} ->
                    Req:respond(Response)
            end
        end, "JSON-RPC: RPC endpoint"),
    {ok, spawn(fun loop/0)}.

stop(_State) ->
    rabbit_mochiweb:unregister_context(jsonrpc),
    ok.

loop() ->
  receive
    _ -> loop()
  end.
