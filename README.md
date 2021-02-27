# README

# categories テーブル
| Column | Type   | Options     |
| ------ | ------ | ----------- |
| id     | bigint |             |
| name   | string | null: false |

# ideasテーブル
| Column      | Type   | Options     |
| ----------- | ------ | ----------- |
| id          | bigint |             |
| category_id | bigint | null: false |
| body        | text   | null: false |