#!/bin/bash
USER=$(whoami)
sudo mkdir /usr/local/texlive/
sudo chmod 770 /usr/local/texlive/
sudo chown $USER:wheel /usr/local/texlive/
curl https://ftp.jaist.ac.jp/pub/CTAN/systems/texlive/tlnet/install-tl-unx.tar.gz -o LaTex.tar.gz
tar -xvf LaTex.tar.gz
touch tmp.default-all
perl install-tl-*/install-tl -profile tmp.default-all
rm tmp.default-all
sudo dnf -y install inkscape ghostscript perl

cat << EOF >>/home/$USER/.bashrc
TexLiveVersion=$(ls /usr/local/texlive/|grep [0-9].*)
EOF

cat << "EOF" >>/home/$USER/.bashrc
MANPATH=$MANPATH:/usr/local/texlive/$TexLiveVersion/texmf-dist/doc/man
INFOPATH=$INFOPATH:/usr/local/texlive/$TexLiveVersion/texmf-dist/doc/info
PATH=$PATH:/usr/local/texlive/$TexLiveVersion/bin/x86_64-linux
EOF

yes '' |cpan
cpan -f -i  YAML::Tiny