sudo mkdir -p /etc/apt/keyrings
sudo apt-get install apt-transport-https
curl -sSf https://librealsense.intel.com/Debian/librealsense.pgp | sudo tee /etc/apt/keyrings/librealsense.pgp > /dev/null
echo "deb [signed-by=/etc/apt/keyrings/librealsense.pgp] https://librealsense.intel.com/Debian/apt-repo `lsb_release -cs` main" | \
sudo tee /etc/apt/sources.list.d/librealsense.list
sudo apt-get update
sudo apt-get install librealsense2-dkms -y
sudo apt-get install librealsense2-utils -y

sudo apt-get install libssl-dev libusb-1.0-0-dev libudev-dev pkg-config libgtk-3-dev cmake
sudo apt-get install libglfw3-dev libgl1-mesa-dev libglu1-mesa-dev at

cd
git clone https://github.com/IntelRealSense/librealsense.git
cd librealsense
./scripts/setup_udev_rules.sh
./scripts/patch-realsense-ubuntu-lts-hwe.sh
mkdir build && cd build
cmake ../ -DBUILD_EXAMPLES=true

cd ~/ros2_ws/src/
git clone https://github.com/IntelRealSense/realsense-ros.git -b ros2-development
cd ~/ros2_ws

sudo apt-get install python3-rosdep -y
sudo apt-get install ros-foxy-diagnostic-updater
sudo apt-get install librealsense2-dev
colcon build
