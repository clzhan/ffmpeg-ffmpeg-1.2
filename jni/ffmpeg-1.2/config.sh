#EBUILT=/root/android-ndk-r4b/build/prebuilt/linux-x86/arm-eabi-4.4.0
#export PREBUILT=/home/libjingle/android/android-ndk-r8e/toolchains/arm-linux-androideabi-4.6/prebuilt/linux-x86_64

export PREBUILT=/home/libjingle/android/android-ndk-r8d/toolchains/arm-linux-androideabi-4.6/prebuilt/linux-x86

export PLATFORM=/home/libjingle/android/android-ndk-r8d/platforms/android-14/arch-arm

export TMPDIR=/tmp


./configure --target-os=linux \
	--arch=arm \
	--enable-version3 \
	--enable-gpl \
	--enable-nonfree \
	--disable-stripping \
	--disable-ffplay \
	--disable-ffserver \
	--enable-cross-compile \
	--cc=$PREBUILT/bin/arm-linux-androideabi-gcc \
	--cross-prefix=$PREBUILT/bin/arm-linux-androideabi- \
	--nm=$PREBUILT/bin/arm-linux-androideabi-nm \
	--strip=$PREBUILT/bin/arm-linux-androideabi-strip \
	--extra-cflags="-fPIC -DANDROID" \
	--disable-asm \
	--enable-neon \
	--enable-armv5te \
	--extra-ldflags="-Wl,-T,$PREBUILT/arm-linux-androideabi/lib/ldscripts/armelf_linux_eabi.x -Wl,-rpath-link=$PLATFORM/usr/lib -L$PLATFORM/usr/lib -nostdlib $PREBUILT/lib/gcc/arm-linux-androideabi/4.6/crtbegin.o $PREBUILT/lib/gcc/arm-linux-androideabi/4.6/crtend.o -lc -lm -ldl" 

#--disable-encoders \
#--extra-ldflags="-Wl,-T,$PREBUILT/arm-eabi/lib/ldscripts/armelf.x -Wl,-rpath-link=$PLATFORM/usr/lib -L$PLATFORM/usr/lib -nostdlib $PREBUILT/lib/gcc/arm-eabi/4.4.0/crtbegin.o $PREBUILT/lib/gcc/arm-eabi/4.4.0/crtend.o -lc -lm -ldl"
#--disable-ffprobe \
#	--disable-muxers \
#	--disable-devices \
#--enable-decoder=h264 \
#--disable-ffmpeg \
#	--disable-protocols \
#--enable-armvfp \
#	--enable-protocol=file \
#	--enable-avfilter \
#	--disable-network \
#	--disable-avdevice \
#	--enable-encoder=mpeg4 \

sed -i 's/HAVE_LRINT 0/HAVE_LRINT 1/g' config.h  
sed -i 's/HAVE_LRINTF 0/HAVE_LRINTF 1/g' config.h  
sed -i 's/HAVE_ROUND 0/HAVE_ROUND 1/g' config.h  
sed -i 's/HAVE_ROUNDF 0/HAVE_ROUNDF 1/g' config.h  
sed -i 's/HAVE_TRUNC 0/HAVE_TRUNC 1/g' config.h  
sed -i 's/HAVE_TRUNCF 0/HAVE_TRUNCF 1/g' config.h  
sed -i 's/HAVE_CBRT 0/HAVE_CBRT 1/g' config.h  
sed -i 's/HAVE_CBRTF 0/HAVE_CBRTF 1/g' config.h  
sed -i 's/HAVE_ISINF 0/HAVE_ISINF 1/g' config.h  
sed -i 's/HAVE_ISNAN 0/HAVE_ISNAN 1/g' config.h  
sed -i 's/HAVE_SINF 0/HAVE_SINF 1/g' config.h  
sed -i 's/HAVE_RINT 0/HAVE_RINT 1/g' config.h  
