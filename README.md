# SQLite3 for PHP on Windows

## Building

* start the respective Visual Studio console
* `cd` into the directory
* `nmake install`\
  The package will be installed in the folder given by the macro `PREFIX` (which is `$(CRT)-$(MACHINE)` if not explicitly given. macros are defined as usual. `CRT` defaults to vc15 and ` MACHINE`  to x64.
