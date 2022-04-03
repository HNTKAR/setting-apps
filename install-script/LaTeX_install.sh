#!/bin/bash
name=$(whoami)
sudo dnf -y install inkscape ghostscript perl || sudo apt -y install inkscape ghostscript perl
sudo mkdir -p /usr/local/texlive/
sudo chmod 770 /usr/local/texlive/
sudo chown $name:wheel /usr/local/texlive/

yes '' | sudo cpan YAML::Tiny
# ctepan  Log::Log4perl

tex -v >/dev/null 2>&1
if [ $? -ne 0 ]; then
curl https://ftp.jaist.ac.jp/pub/CTAN/systems/texlive/tlnet/install-tl-unx.tar.gz -o LaTex.tar.gz
tar -xvf LaTex.tar.gz
touch tmp.default-all
perl install-tl-*/install-tl -profile tmp.default-all
rm -r tmp.default-all LaTex.tar.gz install-tl-*
fi

sed -i /TexLiveVersion/d /home/$name/.bashrc
cat << EOF >>/home/$USER/.bashrc
TexLiveVersion=$(ls /usr/local/texlive/|grep [0-9].*)
EOF

cat << "EOF" >>/home/$USER/.bashrc
MANPATH=$MANPATH:/usr/local/texlive/$TexLiveVersion/texmf-dist/doc/man
INFOPATH=$INFOPATH:/usr/local/texlive/$TexLiveVersion/texmf-dist/doc/info
PATH=$PATH:/usr/local/texlive/$TexLiveVersion/bin/x86_64-linux
EOF