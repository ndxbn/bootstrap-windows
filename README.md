# Bootstrap My Windows PC
my windows working environment build scripts

開発環境のセットアップすることは、「マシンを1台セットアップする」ことに他ならないので、[Provisioning Toolchain](https://conferences.oreilly.com/velocity/velocity-mar2010/public/schedule/detail/14180)の概念に則って説明します。

- `Bootstraping` は、[Bootstraping](#bootstraping) を参照
- `Configuration` は、 [Installation](#installation) を参照
- `Orchestration` は、現状はない

# Bootstraping
いくつかのディレクトリの作成や、構成の変更などを行います。
これらは、ソフトウェアのインストールや Windows の挙動そのものを変更するものが含まれるため、最初に行ってください。

## D:ドライブがある場合
もし、複数台の補助記憶装置がマウントされている場合、マイドキュメントやマイピクチャなどの「ライブラリ」ディレクトリを貼り直すべきです。
この作業は、セーフモードで起動して行う必要があります。。
事前にどのディレクトリをどのようにマップし直すかを検討し、実施してください。

普段は、「ライブラリ」にあるディレクトリすべてを、 `D:\Users\%UserName%` へ移動し、シンボリックリンクを作成しています。
「ライブラリ」のディレクトリ以外は、キャッシュなどの都合で頻繁にアクセスされるため、より高速であることが期待される C:ドライブ に残しておくことが多いです。

ディスクのマウントは、管理者権限のあるユーザで行うが、ディレクトリの構成変更は、セーフモードで実施する必要があります。
理由は、ユーザのログインそのものに影響するため。

# Installation
常用している各種ソフトウェアやライブラリなどのインストールについて。

- [Chocolatey をインストールし、Chocolatey でインストール](#install-via-chocolatey)
- [いくつかのソフトウェアを、手動でインストール](#install-manually)

## Install via Chocolatey
Windows 10 では、最初から Chocolatey がインストールされているはずです。されていなかったら、自分でインストールしてください。
[Chocolatey の公式ページはこちら](https://chocolatey.org/install)。

### Install Command and Library Packages
以下のコードをコピペして実行してください。
このコードは1行になっているため、トリプルクリックで全体を選択することができます。

```powershell
cinst -y 7zip ChromeDriver2 ffmpeg git greenshot mysql.workbench plantuml sysinternals
```

## Install Manually
諸事情で Chocolatey を使用せずに手動でインストールするもの。

- [Google IME](https://www.google.co.jp/ime/)
- [Jetbrains Toolbox App](https://www.jetbrains.com/toolbox/app/)（IntelliJ などの IDE は、toolbox 経由で管理）
- [Notepad++](https://notepad-plus-plus.org/download/)
- [linkshellextension](http://schinagl.priv.at/nt/hardlinkshellext/hardlinkshellext.html#contact)
- [OBS Studio](https://obsproject.com/)
- [IPAフォント](https://ipafont.ipa.go.jp/old/ipafont/download.html)
- [Windows Subsystem for Linux](https://docs.microsoft.com/ja-jp/windows/wsl/install-win10)
- [Discord](https://discordapp.com/)

## 各ソフトウェアの設定
インストールしたソフトウェアの設定。

### Windows Subsystem for Linux

Install Python3 and pip.

```bash
sudo apt-get install python3 python3-distutils
curl -kL https://bootstrap.pypa.io/get-pip.py | sudo python3
```

## 環境変数

- `Path`: `%USERPROFILE%\bin;%USERPROFILE%\go\bin;%APPDATA%\npm;%APPDATA%\Composer\vendor\bin;C:\Program Files\Oracle\VirtualBox;%USERPROFILE%\AppData\Local\Microsoft\WindowsApps`

### GreenShot
以下の画像のような設定にします。
設定ファイルには、設定のみならず、キャッシュやヒストリーなどの情報も含まれており、バージョン管理の対象に含めるべきではなかったので、こうなっています。

![2017-07-06_16-18-00_000044](https://user-images.githubusercontent.com/2140131/27899813-bd16fd68-6266-11e7-8be6-c6d1a3ca7759.png)
![2017-07-06_16-18-01_000045](https://user-images.githubusercontent.com/2140131/27899815-bd1f0468-6266-11e7-8a1e-03e066817dd4.png)
![2017-07-06_16-18-01_000046](https://user-images.githubusercontent.com/2140131/27899814-bd1ab778-6266-11e7-8328-904da78d991f.png)
![2017-07-06_16-18-02_000047](https://user-images.githubusercontent.com/2140131/27899816-bd35786a-6266-11e7-978f-dc302d86a731.png)
![2017-07-06_16-17-57_000041](https://user-images.githubusercontent.com/2140131/27899817-bd3791c2-6266-11e7-8151-936a6bd6aa97.png)
![2017-07-06_16-17-58_000042](https://user-images.githubusercontent.com/2140131/27899818-bd3a17ee-6266-11e7-9e18-df942ed158d1.png)
![2017-07-06_16-17-59_000043](https://user-images.githubusercontent.com/2140131/27899819-bd3b0dd4-6266-11e7-910c-cecc068a68e0.png)

