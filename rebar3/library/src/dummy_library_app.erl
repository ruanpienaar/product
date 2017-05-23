-module(dummy_library_app).

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1]).

-include("dummy_library.hrl").

%% ===================================================================
%% Application callbacks
%% ===================================================================

start(_StartType, _StartArgs) ->
    dummy_library_sup:start_link().

stop(_State) ->
    ok.
