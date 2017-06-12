-module(dummy_app_app).

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1]).

-include("dummy_app.hrl").

%% ===================================================================
%% Application callbacks
%% ===================================================================

start(_StartType, _StartArgs) ->
    dummy_app_sup:start_link().

stop(_State) ->
    ok.
