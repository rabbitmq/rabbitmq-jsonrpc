%% The contents of this file are subject to the Mozilla Public License
%% Version 1.1 (the "License"); you may not use this file except in
%% compliance with the License. You may obtain a copy of the License
%% at https://www.mozilla.org/MPL/
%%
%% Software distributed under the License is distributed on an "AS IS"
%% basis, WITHOUT WARRANTY OF ANY KIND, either express or implied. See
%% the License for the specific language governing rights and
%% limitations under the License.
%%
%% The Original Code is RabbitMQ.
%%
%% The Initial Developer of the Original Code is GoPivotal, Inc.
%% Copyright (c) 2007-2015 GoPivotal, Inc.  All rights reserved.
%%

-module(rabbit_jsonrpc_handler).

-export([init/3]).
-export([handle/2]).
-export([terminate/3]).

init(_, Req, RpcContext) ->
    {ok, Req, RpcContext}.

handle(Req0, RpcContext) ->
    case rfc4627_jsonrpc_cowboy:handle("/" ++ RpcContext, Req0) of
        no_match ->
            {ok, Req} = cowboy_req:reply(404, Req0),
            {ok, Req, RpcContext};
        {ok, Req} ->
            {ok, Req, RpcContext}
    end.

terminate(_, _, _) ->
    ok.
