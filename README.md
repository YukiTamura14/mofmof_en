# dev-exam
![Language](https://img.shields.io/badge/language-Ruby%202.3.1-red.svg)
![Framework](https://img.shields.io/badge/framework-Ruby%20on%20Rails%205.0.0-red.svg)
![DB](https://img.shields.io/badge/DB-Sqlite-blue.svg)

このリポジトリは、技術力テスト用のリポジトリです。

## アプリケーションの概要
&nbsp; &nbsp; &nbsp;賃貸情報物件情報画面のCRUDを実装しました。

&nbsp; &nbsp; &nbsp;最寄り駅表示数はデフォルトで２駅に設定しています。

## セットアップ
 - git clone https://github.com/th3957/mofmof-exam.git
 - cd dev-exam
 - bundle install --path vendor/bundler
 - rails db:create db:migrate
 - rails s
