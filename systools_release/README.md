#An example erlang release, done the old fashioned way.
http://erlang.org/doc/design_principles/release_structure.html

#Generating Boot Scripts
to compile use:
```
$ make
```

to build release:
```
$ cd rel/0.0.1
$ erl -pa ../../ebin
$ systools:make_script("product_rel-0.0.1", [local]).
```

Now rel/0.0.1 will have the boot files needed.
start it up with:
```
$ cd rel/0.0.1
$ erl -boot product_rel-0.0.1
```

#Creating a Release Package

http://erlang.org/doc/design_principles/release_structure.html#id84441

#Terms
.app -> Application Resource File
.rel -> release resource file
