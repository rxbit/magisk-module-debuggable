PowerShell version of the build script depends on 7zip install into C:\Program Files\7-Zip\

```sh
# Enable Debuggable
ro.debuggable=1
ro.build.type=userdebug

# Disable MagiskHide cause it will change ro.debuggable
persist.magisk.hide=0
```

