# Cross compiles for myriad platforms
gox
# Removes FreeBSD, OpenBSD, Windows386, Mac386, s390x
rm galaxycli_freebsd* galaxycli_linux_m* galaxycli_openbsd_* galaxycli_windows_386* galaxycli_linux_s390x galaxycli_darwin_386
# Moves binaries to match uname -m
mv galaxycli_darwin_amd64 galaxycli_darwin_x86_64
mv galaxycli_linux_386 galaxycli_linux_x86
mv galaxycli_linux_amd64 galaxycli_linux_x86_64
mv galaxycli_linux_arm galaxycli_linux_armv7l
# Builds for Pi W Zero, original Pi
env GOOS=linux GOARCH=arm GOARM=5 go build
mv galaxycli galaxycli_linux_armv6l
