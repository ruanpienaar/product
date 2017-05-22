# An example erlang release, done the old fashioned way.
http://erlang.org/doc/design_principles/release_structure.html

# Generating Boot Scripts
to compile use:
```
$ make
```

to build release:
```
$ make compile release
```

Now rel/$(RELEASE_VSN) will have the boot files needed.
start it up locally with:
```
$ make run_release
```

# Creating a Release Package
http://erlang.org/doc/design_principles/release_structure.html#id84441

to generate a package use:
```
$ make package
```

extract the package on your desired machine, start_release.sh can be used to
start the package at the moment. ( to upgrade, change the RELEASE_VSN, make
package, place the a new package in the same directory,
and decompress, new version directories should be in lib, along with new boot file of new version )

```
$ cp product_rel-0.0.1.tar.gz somefolder/
$ tar -xvzf product_rel-0.0.1.tar.gz
$ ./start_release.sh
```

# Dealing with upgrading a application [Appup Docs](http://erlang.org/doc/man/appup.html)
.appup
```Erlang
{Vsn,
 [{UpFromVsn1, InstructionsU1},
  ...,
  {UpFromVsnK, InstructionsUK}],
 [{DownToVsn1, InstructionsD1},
  ...,
  {DownToVsnK, InstructionsDK}]}.
```

List of High-Level Instructions:
* {update, Mod}
* {update, Mod, supervisor}
* {update, Mod, Change}
* {update, Mod, DepMods}
* {update, Mod, Change, DepMods}
* {update, Mod, Change, PrePurge, PostPurge, DepMods}
* {update, Mod, Timeout, Change, PrePurge, PostPurge, DepMods}
* {update, Mod, ModType, Timeout, Change, PrePurge, PostPurge, DepMods}
```
 Mod = atom()
 ModType = static | dynamic
   Timeout = int() > 0 | default | infinity
   Change = soft | {advanced,Extra}
     Extra = term()
   PrePurge = PostPurge = soft_purge | brutal_purge
   DepMods = [Mod]
```

# Deal with upgrading a release
.relup

#Terms
.app   -> Application resource file
.rel   -> Release resource file
.appup -> Application upgrade file
.relup -> Release upgrade file