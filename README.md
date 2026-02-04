# Bootstrap My Windows PC

開発環境のセットアップすることは、「マシンを1台セットアップする」ことに他ならないので、[Provisioning Toolchain](https://conferences.oreilly.com/velocity/velocity-mar2010/public/schedule/detail/14180)の概念に則って説明します。

- `Bootstraping` : [Bootstraping](#bootstraping) を参照
- `Configuration`  : [Installation](#installation) を参照
- `Orchestration`  : nothing todo

# Bootstraping
いくつかのディレクトリの作成や、構成の変更などを行います。
これらは、ソフトウェアのインストールや Windows の挙動そのものを変更するものが含まれるため、最初に行ってください。

# Installation
常用している各種ソフトウェアやライブラリなどのインストールをします。

## Install via winget / scoop

// TBD

https://github.com/ndxbn/bootstrap-windows/blob/main/winget.json

```powershell
winget import winget.json
```

## Install Manually
諸事情により手動でインストールするもの。

- [PlemolJP フォント](https://github.com/yuru7/PlemolJP)：日本語文字優先 NFJ の 3:5 版を使う。太さは `Text` と `Italic` のみで良い
- [DXP4800 Plus Client](https://nas.ugreen.jp/pages/download-center)
- [astah* professional](https://astah.change-vision.com/ja/download.html)
- [astah* professional template](https://github.com/ndxbn/astah-template)
- [`bin/` ディレクトリ](https://github.com/ndxbn/bin-windows)

## 各ソフトウェアの設定
インストールしたソフトウェアの設定。

### 環境変数

winget を使うようになってからは不要になりました。

### GreenShot
GUI の設定画面から手動で設定する必要があります。
設定ファイルには、設定のみならず、キャッシュやヒストリーなどの情報も含まれているため、環境ごとに手動でセットアップする必要があります。

コピペ用

- `${YYYY}-${MM}-${DD}_${hh}-${mm}-${ss}_${NUM}`

![2017-07-06_16-18-00_000044](https://user-images.githubusercontent.com/2140131/27899813-bd16fd68-6266-11e7-8be6-c6d1a3ca7759.png)
![2017-07-06_16-18-01_000045](https://user-images.githubusercontent.com/2140131/27899815-bd1f0468-6266-11e7-8a1e-03e066817dd4.png)
![2017-07-06_16-18-01_000046](https://user-images.githubusercontent.com/2140131/27899814-bd1ab778-6266-11e7-8328-904da78d991f.png)
![2017-07-06_16-18-02_000047](https://user-images.githubusercontent.com/2140131/27899816-bd35786a-6266-11e7-978f-dc302d86a731.png)
![2017-07-06_16-17-57_000041](https://user-images.githubusercontent.com/2140131/27899817-bd3791c2-6266-11e7-8151-936a6bd6aa97.png)
![2017-07-06_16-17-58_000042](https://user-images.githubusercontent.com/2140131/27899818-bd3a17ee-6266-11e7-9e18-df942ed158d1.png)
![2017-07-06_16-17-59_000043](https://user-images.githubusercontent.com/2140131/27899819-bd3b0dd4-6266-11e7-910c-cecc068a68e0.png)


## Windows Subsystem for Linux

[see my provision repo](https://github.com/ndxbn/provision)

## Google Chrome のいくつかのページを個別のアプリ化する

- https://keep.google.com/
- https://tasks.google.com/
- YouTube Live のライブ配信ダッシュボード
