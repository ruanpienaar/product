#rebar releases

it's advisable to either 
1) compile rebar and place rebar(the executable) in rebar/application, and rebar/library, or
2) compile rebar and add to your $PATH for the example/templates to work

my rebar fork: https://github.com/ruanpienaar/rebar from: https://github.com/rebar/rebar
resources: https://github.com/rebar/rebar/wiki
you might want to also checkout rebar templates: https://github.com/ruanpienaar/rebar_templates

# Application

I generated the application with:
```
rebar -f create template=application appid=product releaseid=product_release
```

# Library

I generated the library with:
```
rebar -f create template=library appid=product_lib
```