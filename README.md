This is the fork from rxbit/magisk-module-debuggable repo. 

I've updated it to work with current versions of magisk (20.4+) and added selinux policies from evdenis/adb_root, so you can run you preinstalled adbd as root easily. 

Also, there is prepared dir module/system/etc/security/cacerts/ where you can paste your research caCerts and they will be installed into system, after module is loaded.


To build module, run ./buildModule.sh or buildModule.ps1 if you're under Windows. This will create .zip archive, that can be installed as magisk module.


PowerShell (Windows) version of the build script depends on 7zip installed into C:\Program Files\7-Zip\

```sh
# Enable Debuggable
ro.debuggable=1
ro.build.type=userdebug

# Disable MagiskHide cause it will change ro.debuggable
persist.magisk.hide=0

