# stubappindicator
This is a libappindicator stub designed to be loaded instead of the real
libappindicator. This means that...

  1. Apps which crash because of libappindicator, like Slack and Discord, shouldn't anymore...
  2. ...but they also won't have a tray icon

## Usage
First, build it (Makefiles are overrated):

```
./build.sh
```

Then run your crashing application with the generated `libappindicator.so`
in `LD_PRELOAD`:

```
LD_PRELOAD=$(pwd)/libappindicator.so discord
```
