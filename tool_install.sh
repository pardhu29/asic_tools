#OpenSource ASIC tools Installation Begins....
mkdir -p tools/installation/
mv qrouter-1.4.59.tgz tools/installation/.
mv magic-8.3.3.tgz tools/installation/.
mv netgen-1.5.146.tgz tools/installation/.
mv qflow-1.4.76.tgz tools/installation/.
cd tools/installation/
sudo apt-get install build-essential bison flex libreadline-dev gawk tcl-dev tk-dev libffi-dev graphviz xdot pkg-config python3 libboost-system-dev libboost-python-dev libboost-filesystem-dev zlib1g-dev --assume-yes
sudo apt install libglu1-mesa-dev freeglut3-dev --assume-yes
wget "https://github.com/Kitware/CMake/releases/download/v3.13.0/cmake-3.13.0.tar.gz"
tar -xvzf cmake-3.13.0.tar.gz
cd cmake-3.13.0/
sudo ./bootstrap --prefix=/usr/local
sudo make -j$(nproc)
sudo make install
cd ../
wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | sudo apt-key add -
sudo apt-add-repository "deb http://apt.llvm.org/xenial/ llvm-toolchain-xenial-6.0 main" -y 
sudo apt-get update 
sudo apt-get install -y clang-6.0 --assume-yes
sudo apt-get install gsl-bin libgsl0-dev --assume-yes
sudo apt-get install yosys yosys-doc yosys-dev --assume-yes
git clone https://github.com/rubund/graywolf.git
cd graywolf/
mkdir build
cd build
cmake ..
sudo make
sudo make install
cd ../../
tar -xvzf qrouter-1.4.59.tgz
cd qrouter-1.4.59
sudo ./configure 
sudo make
sudo make install 
cd ../
sudo apt-get install m4 tcsh tcl-dev tk-dev libx11-dev libcairo2 libcairo2-dev --assume-yes
tar -xvzf magic-8.3.3.tgz
cd magic-8.3.3
sudo ./configure
sudo make
sudo make install
cd ../
tar -xvzf netgen-1.5.146.tgz
cd netgen-1.5.146
sudo ./configure 
sudo make
sudo make install
cd ../
tar -xvzf qflow-1.4.76.tgz
cd qflow-1.4.76
sudo ./configure 
sudo make
sudo make install
cd ../
sudo apt-get install autoconf automake libtool swig --assume-yes
git clone https://github.com/The-OpenROAD-Project/OpenSTA.git
cd OpenSTA
mkdir build
cd build
cmake ..
sudo make
cd ../
sudo ln -s $PWD/app/sta /usr/bin/sta
cd ../
sudo apt-get install tcllib gcc-8 g++-8 --assume-yes
sudo add-apt-repository ppa:ubuntu-toolchain-r/test -y
sudo apt-get update
cd /usr/bin
sudo rm -rf g++
sudo ln -s g++-8 /usr/bin/g++
sudo rm -rf gcc
sudo ln -s gcc-8 /usr/bin/gcc
cd -
git clone https://github.com/OpenTimer/OpenTimer.git
cd OpenTimer/
mkdir build
cd build
cmake ..
sudo make
cd ../
sudo ln -s $PWD/bin/ot-shell /usr/bin/OpenTimer
cd ../
sudo apt-get install python3-tk
which graywolf
which yosys
which qflow
which magic
which qrouter
which netgen
which sta
which OpenTimer
sudo rm -rf qrouter-1.4.59.tgz
sudo rm -rf magic-8.3.3.tgz
sudo rm -rf netgen-1.5.146.tgz
sudo rm -rf qflow-1.4.76.tgz
sudo rm -rf cmake-3.13.0.tar.gz
cd ../
#OpenSource ASIC tools Installation Finished....
#Happy Learning- ALL THE BEST
