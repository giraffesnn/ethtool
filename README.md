# ethtool-v5.4 for android9.0
For Android 10.0 and later, ethtool can be supported by default.  
For Android 9.0, ethtool needs to be ported.

Source code forked form [git://git.kernel.org/pub/scm/network/ethtool/ethtool.git](https://git.kernel.org/pub/scm/network/ethtool/ethtool.git)  
Version: ethtool-v5.4

Android.mk based on [Add Ethtool in Android](https://www.programmersought.com/article/53248957348/).

# How to use 
$ cd myandroid  
$ git clone https://github.com/giraffesnn/ethtool.git external/ethtool  
$ source build/envsetup.sh  
$ lunch # Choose the platform/board  
$ mmm external/ethtool  
Install: out/target/product/BOARD/system/bin/ethtool  
$ make snod # make system.img ignoring depencies
