# How to create a Library with rebar3 and rebar3 templates

## setup rebar3 templates
```
mkdir -p ~/.config/rebar3/templates
cd ~/code && git clone https://github.com/ruanpienaar/rebar_templates
cd rebar_templates && cp rebar3/* ~/.config/rebar3/templates
```

## create application
```
mkdir application && cd application
rebar3 new application appid=dummy_app releaseid=dummy_app_rel
```

## run it
```
$ make
$ ./_build/default/rel/dummy_app_rel/bin/dummy_app_rel console
erl> erlang:halt().
```