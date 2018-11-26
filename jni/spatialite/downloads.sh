export HOST=arm-linux-androideabi
export BUILD=x86_64-pc-linux-gnu

wget -O config.guess 'http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.guess;hb=HEAD'
wget -O config.sub 'http://git.savannah.gnu.org/gitweb/?p=config.git;a=blob_plain;f=config.sub;hb=HEAD'

#proj
ver=5.2.0
wget http://download.osgeo.org/proj/proj-${ver}.tar.gz
tar -xvzf proj-${ver}.tar.gz
cd proj-${ver}/
# versions in tar maybe too old for android
cp ../config.guess .
cp ../config.sub .
./configure --host=$HOST --build=$BUILD
cd ..

#sqlite
ver=3250300
wget http://www.sqlite.org/2018/sqlite-autoconf-${ver}.tar.gz
tar -xvzf sqlite-autoconf-${ver}.tar.gz
cd sqlite-autoconf-${ver}/
# versions in tar maybe too old for android
cp ../config.guess .
cp ../config.sub .
./configure --host=$HOST --build=$BUILD 
cd ..

#geos
ver=3.6.3
wget  http://download.osgeo.org/geos/geos-${ver}.tar.bz2
tar -xvjf geos-${ver}.tar.bz2 
cd geos-${ver}/
# versions in tar maybe too old for android
cp ../config.guess .
cp ../config.sub .
./configure --host=$HOST --build=$BUILD
cd ..

#libspatialite
ver=5.0.0-beta0
#wget http://www.gaia-gis.it/gaia-sins/libspatialite-sources/libspatialite-${ver}.tar.gz
tar -xvzf libspatialite-${ver}.tar.gz
cd libspatialite-${ver}/
# versions in tar maybe too old for android
cp ../config.guess .
cp ../config.sub .
# target android prevents linking pthread
./configure --host=$HOST --build=$BUILD --target=android \
    --enable-iconv=no  --enable-freexl=no  \
    --enable-rttopo=no --enable-libxml2=no \
    --enable-module-only 
cd ..

