echo "=============================="
find $HOME -name "libvips.so*" 
# I don't like nor understand than one : it is installed by apt ! Why is it not found ?
mv /tmp/build_*/.apt/usr/lib/x86_64-linux-gnu/libgsf-1.so* $HOME/vendor/vips/lib
echo "=============================="

export PATH="$PATH:$HOME/vendor/vips/bin"
export PKG_CONFIG_PATH="$PKG_CONFIG_PATH:$HOME/vendor/vips/lib/pkgconfig"
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:$HOME/vendor/vips/lib"
