# my_windows_builder
my windows working environment build scripts

# Installation
常用している各種ソフトウェアやライブラリなどのインストールをする。

## Install Chocolatey
この章では `chocolatey` 自体のインストールをする手順を説明する。
[公式ページはこちら](https://chocolatey.org/install)。

### 管理者権限で PowerShell を起動
スタートボタンを右クリック もしくは <kbd>Win</kbd> + <kbd>x</kbd> から、PowerShell を管理者権限で起動する。
ミドルウェアなどは OS に対してインストールするものなので、管理者権限が必要になる。
以後、コマンドはこの PowerShell コンソールで行う。

### Execution Policy を Chocolatey のインストール時のみ、ゆるめておく
開いている PowerShell のプロセスでのみ、 `RemoteSigned` にしておく。
ネット上のパッケージをダウンロード・インストールするために、設定する必要がある。

```posershell
Set-ExecutionPolicy RemoteSigned -Scope Process
```

### Chocolatey 本体のインストール
Chocolatey をインストールする。

いくつかのパッケージがチェックサムをちゃんと提供してくれていないようなので、
`allow empty checksums` オプションをデフォルトでつけるようにしておく。

```powershell
iwr https://chocolatey.org/install.ps1 -UseBasicParsing | iex
choco feature enable -n allowEmptyChecksums
```

## Install Command and Library Packages
`Chocolatey` で、`git`とか`wget`とかのコマンドパッケージをインストールする。

```powershell
cinst -y 7zip ChromeDriver2 curl git greenshot hub javaruntime jdk8 linkshellextension mysql MySql.Utilities mysql.workbench nodejs notepadplusplus plantuml php putty.portable python rsync ruby screentogif SQLite sqlite.analyzer sqlite.shell sysinternals vagrant virtualbox vlc wget whois winmerge-jp
```

TIPS: 上のコードは1行になっている。トリプルクリックすると1行全体を選択することができる。

プライベートなPCの場合は、以下のコマンドパッケージも追加でインストールする。

```powershell
cinst -y ffmpeg wireshark yumi
```

## Install Manually
この章では、諸事情で Chocolatey を使用せずに手動でインストールするものを説明する。

### Self Update できるもの
以下のソフトウェアは、ソフトウェア自身で self update できるため、 手動でインストールする。
Chocolatey によるバージョン管理配下から外すことを目的としている。

* [astah](http://astah.change-vision.com/ja/)
* [Google IME](https://www.google.co.jp/ime/)
* [IntelliJ](https://www.jetbrains.com/)
* [SAO Util](http://www.gpbeta.com/ja/post/develop/sao-utils/)
* [Git Kraken](https://www.gitkraken.com/)

### Chocolatey でインストールできないもの
以下のソフトウェアは、 chocolatey でインストール出来ないため、手動でインストールする。

* [conmposer](https://getcomposer.org/)
* [OBS Studio](https://obsproject.com/)
