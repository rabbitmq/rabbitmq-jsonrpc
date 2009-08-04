-module(rabbit_jsonrpc_http_channel).

-behaviour(application).
-export([start/2,stop/1]).

start(_Type, _StartArgs) ->
    rabbitmq_http_server:register_static_context("rabbit_jsonrpc", ?MODULE, "priv/www"),
    rabbitmq_http_server:register_context_handler("rpc",
                                      fun(Req) ->
                                        case rfc4627_jsonrpc_mochiweb:handle("/rpc", Req) of
                                          no_match ->
                                            Req:not_found();
                                          {ok, Response} ->
                                            Req:respond(Response)
                                        end
                                      end),
    {ok, spawn(fun loop/0)}.

stop(_State) ->
    ok.

loop() ->
  receive
    _ -> loop()
  end.
