# Faker

[Faker](https://github.com/stympy/faker) のコード・リーディング

## コード・リーディング

v1.9.3 tag を読む。

### 準備

[Gemfile](Gemfile) を用意

bundler でローカルにインストール

```bash
bundle install --path vendor/bundle
```

### リーディング

コード中の気になる箇所に binding.pry を記載しながら動作を見てみる。

* リーディングメモ:
  * [Ruby gem コードリーディング 01 : Faker (1)](https://tkata117.hatenablog.com/entry/2019/05/06/132039)


## 簡易版 自作Faker

練習として簡易版の Faker を自作してみた → [MyFaker](lib)


### Usage

実行例
```ruby
require './lib/my_faker'

MyFaker::Name.name #=> :en locale の名前をRandomに返す

MyFaker::Config.locale = :ja
MyFaker::Name.name #=> :ja locale の名前をRandomに返す
```

Test
```bash
bundle exec rake test
```
