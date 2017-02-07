-module(product_app).

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1]).

-include("product.hrl").

%% ===================================================================
%% Application callbacks
%% ===================================================================

start(_StartType, _StartArgs) ->
    product_sup:start_link().

stop(_State) ->
    ok.
