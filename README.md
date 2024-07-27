**Advanced bootloader for OpenComputers**
## Installation

For **OpenOS**, just run this command:

```
wget -f https://raw.githubusercontent.com/youaregod666/Cyan/master/installer.lua /tmp/installer.lua && /tmp/installer.lua
```

For **MineOS**, you need to find app with name `Cyan BIOS`.
## Shell
Lua REPL with implemented functions:

* os.sleep([timeout: number])
* proxy(componentName: string): component proxy or nil
* read(lastInput: string or nil): string or nil
* print(...)

## Netboot
Executes file from specified URL

## Whitelist access
Prevents booting, for example, if computer stays in some private places.
To boot, it needs some input from user that defined in whitelist.

## How to build own Cyan BIOS?
Just run compress.lua (before that minify the code, for example here: https://mothereff.in/lua-minifier) and make sure that minified.lua file stored in the same folder that compress.lua

## Images/Videos

https://www.youtube.com/watch?v=89K8mWFEJKw
![](https://i.imgur.com/WWiX2tQ.png)
![](https://i.imgur.com/pnFC0cO.png)
![](https://i.imgur.com/6QXw6LX.png)
![](https://i.imgur.com/Yi7v2n2.png)
