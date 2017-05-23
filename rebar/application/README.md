# How to create a Application with rebar and rebar templates

## setup rebar templates
mkdir -p ~/.rebar
cd ~/code && git clone https://github.com/ruanpienaar/rebar_templates
cd rebar_templates && cp rebar2/* ~/.rebar

## create library
mkdir application && cd application
rebar create template=application appid=dummy_app releaseid=dummy_app_rel

## Run it:
```
$ make
$ rel/dummy_app_rel/bin/dummy_app_rel console
erl> erlang:halt().
```