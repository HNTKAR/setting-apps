sudo dnf -y install expect
curl --proto '=https' --tlsv1.2 -o RustSetup.sh -sSf https://sh.rustup.rs
chmod 777 RustSetup.sh
expect -c "
spawn ./RustSetup.sh
expect \">\"
send -- \"1\n\"
interact
exit 0
"
source $HOME/.cargo/env
# rustup component add rls rust-analysis rust-src
rm RustSetup.sh
