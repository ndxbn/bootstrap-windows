# my_windows_builder
my windows working environment build scripts

開発環境のセットアップすることは、「マシンを1台セットアップする」ことに他ならないので、[Provisioning Toolchain](https://conferences.oreilly.com/velocity/velocity-mar2010/public/schedule/detail/14180)の概念に則って説明する。

* `Bootstraping` は、[Bootstraping](#bootstraping) を参照
* `Configuration` は、 [Installation](#installation) を参照
* `Orchestration` は、いまのところ、ない

# Bootstraping
いくつかのディレクトリの作成や、構成の変更などを行う。
これらは、ソフトウェアのインストールや Windows の挙動そのものを変更するものが含まれるため、最初に行う。

* [システムレベルのディレクトリの調整](#cドライブ直下にディレクトリを作成)
* [ハードディスクのマウントポイントの設定] (#dドライブがある場合)

## C:ドライブ直下にディレクトリを作成
全ユーザに共通して使用するディレクトリを作成する。
非管理者権限の `cmd.exe` で、以下のコードをコピペして実行する。

`MD C:\tmp C:\bin`

Windows では、ユーザごとの一時ファイルなどはあるが、システム全体で共通なものがない。
`/usr/local/bin` や `/var/tmp` に相当するディレクトリの需要があるため、事前に作成する。

## D:ドライブがある場合
もし、複数台の補助記憶装置がマウントされている場合、マイドキュメントやマイピクチャなどの「ライブラリ」ディレクトリを貼り直すべきである。
この作業は、セーフモードで起動して行う必要がある。
事前にどのディレクトリをどのようにマップし直すかを検討し、実施する。

普段は、「ライブラリ」にあるディレクトリすべてを、 `D:\Users\%UserName%` へ移動し、シンボリックリンクを作成している。
「ライブラリ」のディレクトリ以外は、キャッシュなどの都合で頻繁にアクセスされるため、より高速であることが期待される C:\ に残しておくべき。

ディスクのマウントは、管理者権限のあるユーザで行うが、
ディレクトリの構成変更は、セーフモードで実施する必要がある。ユーザのログインそのものに影響するため。

# Installation
常用している各種ソフトウェアやライブラリなどのインストールをする。

* [Chocolatey をインストールし、Chocolatey でインストール](#install-via-chocolatey)
* [いくつかのソフトウェアを、手動でインストール](#install-manually)

## Install via Chocolatey
Chocolatey 自体のインストールと、Chocolatey を用いたインストールをする手順を説明する。
[Chocolatey の公式ページはこちら](https://chocolatey.org/install)。

### 管理者権限で PowerShell を起動
PowerShell を管理者権限で起動する。
スタートボタンを右クリック もしくは <kbd>Win</kbd> + <kbd>x</kbd> から起動できる。

### Execution Policy を Chocolatey のインストール時のみ、ゆるめておく
開いている PowerShell のプロセスでのみ、 `RemoteSigned` にしておく。
ネット上のパッケージをダウンロード・インストールするために、設定する必要がある。

```posershell
Set-ExecutionPolicy RemoteSigned -Scope Process
```

### Chocolatey 本体のインストール
いくつかのパッケージがチェックサムをちゃんと提供してくれていないようなので、`allow empty checksums` オプションをデフォルトでつけるようにしておく。

```powershell
iwr https://chocolatey.org/install.ps1 -UseBasicParsing | iex
choco feature enable -n allowEmptyChecksums
```

### Install Command and Library Packages
以下のコードをコピペして実行する。
このコードは1行になっているため、トリプルクリックで全体を選択することができる。

```powershell
cinst -y 7zip ChromeDriver2 curl ffmpeg git greenshot hub javaruntime jdk8 linkshellextension mysql MySql.Utilities mysql.workbench nodejs notepadplusplus plantuml php putty.portable python rsync ruby screentogif SQLite sqlite.analyzer sqlite.shell sysinternals vagrant virtualbox vlc wget whois winmerge-jp wireshark yumi
```

## Install Manually
諸事情で Chocolatey を使用せずに手動でインストールするものを説明する。

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
