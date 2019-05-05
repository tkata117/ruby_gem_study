# Faker

Faker(https://raw.githubusercontent.com/stympy/faker) のコード・リーディング

## コード・リーディング

v1.9.3 tag を読む。

### 準備

Gemfile に下記の gem を記載

```ruby
gem 'faker', :git => 'https://github.com/stympy/faker.git', :tag => 'v1.9.3'
gem 'byebug'
```

bundler でローカルにインストール

```bash
bundle install --path original
```

### リーディング

コード中の気になる箇所に binding.pry を記載しながら動作を見てみる。


## 簡易版 自作Faker

練習として簡易版の Faker を自作してみる。

[MyFaker](my_faker.rb)


### Usage

```ruby
require './my_faker' # my_faker.rb が置かれているディレクトリで実行する例

MyFaker::Name.name #=> :en locale の名前をRandomに返す

MyFaker::Config.locale = :ja
MyFaker::Name.name #=> :ja locale の名前をRandomに返す
```
