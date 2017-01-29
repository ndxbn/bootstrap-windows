# my_windows_builder
my windows working environment build scripts

# useradd
管理者権限持ち（≒Administratorグループ）のユーザしか作られていない場合、常用のユーザとして一般ユーザをつくる。

* Administratorグループのユーザのパスワードの設定
* Userグループのユーザの作成・パスワード設定

# package installation
## install chocolatey
`chocolatey` 自体のインストールをする。[公式ページはこちら](https://chocolatey.org/install)。
いくつかのパッケージがチェックサムをちゃんと提供してくれていないっぽいので、`allow empty checksums` オプションを
デフォルトでつけるようにしておく。

```powershell
iwr https://chocolatey.org/install.ps1 -UseBasicParsing | iex
choco feature enable -n allowEmptyChecksums
```
## install command and library packages
`chocolatey` で、`git`とか`wget`とかのコマンドパッケージをインストールする。

```powershell
cinst -y 7zip ChromeDriver2 curl git greenshot javaruntime jdk8 jre8 mysql MySql.Utilities mysql.workbench nodejs notepadplusplus php putty.portable python rsync ruby screentogif SQLite sqlite.analyzer sqlite.shell sysinternals vagrant virtualbox vlc wget whois winmerge-jp
```

自宅のデスクトップPCの場合は、以下のコマンドパッケージも追加でインストールする。

```powershell
cinst -y ffmpeg plantuml wireshark yumi
```

## install yourself (without chocolatey)
以下のソフトウェアは、self update できるので、chocolatey を使用しない。

* [astah](http://astah.change-vision.com/ja/)
* [Google IME](https://www.google.co.jp/ime/)
* [IntelliJ](https://www.jetbrains.com/)