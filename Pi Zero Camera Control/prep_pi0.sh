## script to prepare a Pi Zero W to interface with a Canon DSLR.

# Check if running as root
if [[ $EUID -ne 0 ]]; then
	echo "~ This script must be run as root. Please restart with 'sudo'. ~" 1>&2
	exit 1
fi

# Download required apt packages
sudo apt-get -y install git make autoconf libltdl-dev libusb-dev libexif-dev libpopt-dev libxml2-dev libjpeg-dev libgd-dev gettext autopoint gphoto2

# Find camera and take a photo to test remote access
gphoto2 --auto-detect
sleep 90s
gphoto2 --capture-image

# List possible configurations with gphoto2
gphoto2 --list-config
