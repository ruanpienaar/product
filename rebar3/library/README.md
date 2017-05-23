# How to create a Library with rebar3 and rebar3 templates

## setup rebar3 templates
```
mkdir -p ~/.config/rebar3/templates
cd ~/code && git clone https://github.com/ruanpienaar/rebar_templates
cd rebar_templates && cp rebar3/* ~/.config/rebar3/templates
```

## create library
```
mkdir library && cd library
rebar3 new library appid=dummy_library

## Run it:
```
$ make
$ ./start-dev.sh
erl> application:ensure_all_started(dummy_library).
erl> ^C^C
```