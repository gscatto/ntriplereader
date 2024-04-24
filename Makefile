check:
	meson test -C build --print-errorlogs

reconfigure:
	python test/meson.build.py test > test/meson.build
	meson setup build --reconfigure

setup:
	meson setup build
