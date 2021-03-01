# README

# categories テーブル
| Column | Type   | Options     |
| ------ | ------ | ----------- |
| id     | bigint |             |
| name   | string | null: false |

### Association
- has_many :ideas

# ideasテーブル
| Column      | Type   | Options     |
| ----------- | ------ | ----------- |
| id          | bigint |             |
| category_id | bigint | null: false |
| body        | text   | null: false |

### Association
- belongs_to :categories