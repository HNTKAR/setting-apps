# パッケージのインストール方法

### Linux
```sh:sample
TMP_PACKAGE_LIST=VScode package list PATH
xargs -a $TMP_PACKAGE_LIST -I {} code --install-extension {}
```