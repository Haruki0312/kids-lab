# テーブル設計

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
- has_many :like_users, through: :users, source: :user

## comments テーブル

| Column  | Type       | Options           |
| ------- | ---------- | ----------------- |
| message | text       | null: false       |
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