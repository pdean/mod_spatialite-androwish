# Uncomment this if you're using STL in your project
# See CPLUSPLUS-SUPPORT.html in the NDK documentation for more information
# APP_STL := c++_static
APP_STL := c++_shared

# The minimum API level to use; is overriden by the NDK to the
# minimum supported API level the toolchain supports.

APP_PLATFORM := android-16

#    "APP_ABI := all"                 for everything
# or "APP_ABI := armeabi arm64-v8a"   for almost all ARM
# or "APP_ABI := x86 x86_64"          for all Intel

APP_ABI := armeabi-v7a 
