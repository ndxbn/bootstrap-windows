
# my_windows_builder
my windows working environment build scripts

# Installation
常用している各種ソフトウェアやライブラリなどのインストールをする。

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
cinst -y 7zip ChromeDriver2 curl git greenshot javaruntime jdk8 mysql MySql.Utilities mysql.workbench nodejs notepadplusplus php putty.portable python rsync ruby screentogif SQLite sqlite.analyzer sqlite.shell sysinternals vagrant virtualbox vlc wget whois winmerge-jp
```

自宅のデスクトップPCの場合は、以下のコマンドパッケージも追加でインストールする。

```powershell
cinst -y ffmpeg plantuml wireshark yumi
```

## install yourself (without chocolatey)
chocolatey を使用せず、手動でインストールする。

### self update できるもの

以下のソフトウェアは、ソフトウェア自身で `self-update` できるため、 手動でインストールする。
chocolatey によるバージョン管理配下から外すことを目的としている。

* [astah](http://astah.change-vision.com/ja/)
* [Google IME](https://www.google.co.jp/ime/)
* [IntelliJ](https://www.jetbrains.com/)
* [SAO Util](http://www.gpbeta.com/ja/post/develop/sao-utils/)
* [Git Kraken](https://www.gitkraken.com/)

### 依存パッケージがコリジョンするもの
以下のソフトウェアは、Chocolateyでもインストールできなくはないが、
Chocolateryでインストールする他のソフトウェアの Visual C++ とバージョンがコリジョンすることがあるため、
手動でインストールする。

* [hub](https://github.com/github/hub/releases/latest)

### chocolatey でインストールできないもの
以下のソフトウェアは、 chocolatey でインストール出来ないため、手動でインストールする。

* [conmposer](https://getcomposer.org/)
