curl --proto '=https' --tlsv1.2 -o RustSetup.sh -sSf https://sh.rustup.rs
chmod 777 RustSetup.sh
./RustSetup.sh -y
source $HOME/.cargo/env
rm RustSetup.sh
