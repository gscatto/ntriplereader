check:
	meson test -C build --print-errorlogs

reconfigure: configure
	meson setup build --reconfigure

setup: configure
	meson setup build

include test/Makefile
