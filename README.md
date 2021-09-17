# アプリ名
## Kids-lab. (キッズラボ 自由研究共有サイト）

# 概要
このアプリケーションは子どもの自由研究作品を投稿し共有し合うものです。
ユーザー登録をし、自由研究作品を投稿することができます。
ログアウト状態のユーザーは作品の検索ができ、作品詳細も閲覧できます。
ログイン済みのユーザーはそれに加えてコメント、いいねなどでユーザー同士で
やりとりをすることができます。


# 本番環境
■ URL：https://kids-lab.herokuapp.com/

■ ユーザー認証
  - ID： kids1234
  - PASS： lab1234

■ ログイン情報（テスト用）
  - Eメール： test1@test.com
  - パスワード： test123


# 利用方法（動作確認）
- 接続先URL、ログイン情報については、上記の通りです。
- テスト用アカウントでログイン→トップページから投稿ボタンを押下→投稿内容を入力→投稿するボタンで投稿完了
- トップページから作品をクリック→詳細画面に遷移→コメント欄にコメントを入力→コメントするボタンを押下
- トップページから作品をクリック→詳細画面に遷移→いいね🤍を押下→🤍の色が変わり、カウントがつく
- 確認後、ログアウト処理をお願いします。


# 制作背景（意図）
このアプリケーションは主に小学生のお子さんがいるお母さんの悩み解決のために作りました。
夏休みの時期になると、SNSでは「子どもの自由研究」のアイデアに悩んでいる、という投稿をお見かけします。
Kids-lab.では作品投稿機能、コメント機能、いいね機能を用いてユーザー間での情報共有や
自分たちの自由研究作品を評価してもらえる場を設けることで、お母さんの悩みの解消の手助けをしたいと考えました。


# 洗い出した要件
- Basic認証
- ユーザー管理機能
- 新規投稿機能
- 投稿一覧表示機能
- 投稿詳細表示機能
- コメント・いいね機能
- テーマ別検索機能


# DEMO
## トップページ（投稿一覧表示画面）
トップページです。
投稿した自由研究の完成画像/タイトル/ユーザー名/テーマ/制作日数/コメント/いいねの情報が表示されます。新着３件まで表示されます。
それぞれの自由研究にコメント、いいねの件数を表示しています。
見たい作品をクリックすると詳細画面に遷移するよう設定しています。
[![Image from Gyazo](https://i.gyazo.com/de2571c0f7b74d3b227928a57c443efe.gif)](https://gyazo.com/de2571c0f7b74d3b227928a57c443efe)

## 新規登録画面
deviseを用いて実装をしています。
ヘッダーから新規登録をクリックして必要事項を入力するとユーザー新規登録ができます。
ログイン後、ユーザー名がヘッダーに表示されます。
ユーザー名のところは、条件分岐を用いてログイン状態、ログアウト状態の表示を変更しています。
[![Image from Gyazo](https://i.gyazo.com/37b4618a1cfc2aadd66c74f6163c7760.gif)](https://gyazo.com/37b4618a1cfc2aadd66c74f6163c7760)

## 新規投稿画面
トップページの右下「投稿する」ボタンをクリックすると、新規投稿画面に遷移します。
ここでは、画像貼付けをActiveStorageを用いて、テーマ/制作日数/お子さまの学年をActiveHashを用いて実装をしています。
画像はJavaScriptを使用してプレビュー表示できる仕様にしています。
必要事項を入力し、「投稿する」ボタンをクリックすると投稿が完了し、トップページに表示されます。
[![Image from Gyazo](https://i.gyazo.com/e1cb5cc41abbb41462da41ba365819b1.gif)](https://gyazo.com/e1cb5cc41abbb41462da41ba365819b1)

## 投稿詳細表示画面
トップページの自由研究画像をクリックすると、詳細画面に遷移します。
新規投稿時に入力した内容が全て表示されます。
コメント欄、いいねマークも表示されています。
[![Image from Gyazo](https://i.gyazo.com/e731334240b70188610eb73066057dca.gif)](https://gyazo.com/e731334240b70188610eb73066057dca)

## コメント機能
コメント欄にコメントを入力し、コメントするをクリックするとコメントを送信できます。
ActionCableを利用し、入力したコメントが即時表示される仕様にしています。
トップページの自由研究作品にもコメント件数が表示されるようになっています。
[![Image from Gyazo](https://i.gyazo.com/91bebef90e4a238d8e0913e817e27324.gif)](https://gyazo.com/91bebef90e4a238d8e0913e817e27324)

## いいね機能
jQueryを導入し、非同期通信でいいねができるよう実装しました。
いいねの🤍をクリックすると「いいね」がつきます。「いいね」がついたら🤍の色が変わり、カウントが１増加されます。連続でつけたり、はずしたりが可能です。
いいねのカウントはトップページにも表示されるようにしています。
[![Image from Gyazo](https://i.gyazo.com/fc3b37a01c0d766c7d897b5c89944ff3.gif)](https://gyazo.com/fc3b37a01c0d766c7d897b5c89944ff3)

# 工夫したポイント
- フリマアプリ作成時同様、必要な工数を全て洗い出し、Trelloを活用してタスク管理を行いました。
- 非同期通信を用いた実装を行いました。
jQueryやActionCableなどカリキュラムでの学習した内容以外のことも用いることで、実装しながらも新しい知識の習得に努めました。
- レスポンシブに配慮した仕様にしました。
ユーザーを「小学生のお子さまをお持ちのお母さん」としていますので、スマホやタブレットを使って閲覧することを想定し、cssにレスポンシブWebデザインを考えた記述をしました。

# 苦労した点
初めて導入したjQueryを使ってのいいね機能の実装に苦労しました。
通常のJavaScriptとの違いや.js.erbファイルの記述方法、値の渡し方などの理解に時間がかかりました。
jQueryについては知識を深めたいと思っていたため、jQueryについてのサイト閲覧や、同様の実装ケースを検索してコードの意味を学習しながら実装することができました。
実装にあたり、エラーも多く発生し、ひとつずつクリアしていくという難易度の高い実装でしたが、jQueryの使用方法やコードの意味についての理解を深めることができ、今後の実装にも活かせると感じました。

# 使用技術（開発環境）
### 【バックエンド】
Ruby, Ruby on Rails

### 【フロントエンド】
HTML, CSS, JavaScript, jQuery, ActionCable

### 【データベース】
MySQL, SequelPro

### 【インフラ】
Heroku

### 【ソース管理】
GitHub、GitHubDesktop

### 【テスト】
Rspec

### 【エディタ】
VS Code

# 課題や今後実装したい機能
- テーマ別検索機能の実装
- 作品投稿の際に、画像が一枚だけしか貼付けができないので
  より具体的な共有のため複数枚画像の投稿ができるようすること
- 一度投稿した内容の削除や編集ができるようにすること
- 検索条件の幅を広げること（テーマ以外での複雑な検索）
- 子どもと楽しく見れるよう見た目の実装に工夫すること（アニメーションの導入など）


# DB設計

## users テーブル
| Column             | Type   | Options                   |
| ------------------ | ------ | ------------------------- |
| username           | string | null: false               |
| email              | string | null: false, unique: true |
| encrypted_password | string | null: false               |

### Association

- has_many :works
- has_many :comments
- has_many :likes, dependent: :destroy
- has_many :like_works, through: :likes, source: :work

## works テーブル
| Column             | Type       | Options           |
| ------------------ | ---------- | ----------------- |
| title              | string     | null: false       |
| material           | text       | null: false       |
| theme_id           | integer    | null: false       |
| product_day_id     | integer    | null: false       |
| grade_id           | integer    | null: false       |
| explanation        | text       | null: false       |
| user               | references | foreign_key: true |

### Association

- belongs_to :user
- has_many :comments
- has_many :likes, dependent: :destroy

## comments テーブル

| Column  | Type       | Options           |
| ------- | ---------- | ----------------- |
| text    | text       | null: false       |
| user    | references | foreign_key: true |
| work    | references | foreign_key: true |

### Association

- belongs_to :user
- belongs_to :work

## likes テーブル

| Column | Type       | Options           |
| ------ | ---------- | ----------------- |
| user   | references | foreign_key: true |
| work   | references | foreign_key: true |

### Association

- belongs_to :user
- belongs_to :work