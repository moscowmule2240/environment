# README

開発環境を Chef を使って Vagrant に作成

## 起動

    /opt/chef/embedded/bin/berks vendor cookbooks
    vagrant up
    vagrant ssh

## Vagrantfile でやっていること

1. OS を再進化
1. git をインストール（ソース clone 用）
1. MySQL をインストール（バージョン指定）
1. Redis をインストール（バージョン指定）

## MySQL

### my.conf を設置

character-set を指定
