# How to create a Library with rebar and rebar templates

## setup rebar templates
```
mkdir -p ~/.rebar
cd ~/code && git clone https://github.com/ruanpienaar/rebar_templates
cd rebar_templates && cp rebar2/* ~/.rebar/templates/
```

## create library
```
mkdir library && cd library
rebar create template=library appid=dummy_library
```

## Run it:
```
$ make
$ ./start-dev.sh
erl> application:ensure_all_started(dummy_library).
erl> ^C^C
```