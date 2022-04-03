mkdir -p /tools/Xilinx/
chmod 777 -R /tools/Xilinx/
ln -s /lib/x86_64-linux-gnu/libtinfo.so.6 /lib/x86_64-linux-gnu/libtinfo.so.5
# ln -s /lib/x86_64-linux-gnu/libncurses.so.6 /lib/x86_64-linux-gnu/libncurses.so.5
# ln -s /lib/x86_64-linux-gnu/libncursesw.so.6 /lib/x86_64-linux-gnu/libncursesw.so.5

# rm -r /tools/Xilinx/ \
#     ~/.local/share/applications/Add\ Design\ Tools\ or\ Devices\ * \
#     ~/.local/share/applications/Documentation\ Navigator_* \
#     ~/.local/share/applications/Manage\ Xilinx\ Licenses\ * \
#  \
#     ~/.local/share/applications/Uninstall\ * \
#     ~/.local/share/applications/Vitis\ * \
#     ~/.local/share/applications/Xilinx\ * 

# rsync -a --progress ~/Downloads/tools/Xilinx /tools
# cd /tools
# ./Xilinx/Downloads/2021.2/xsetup
