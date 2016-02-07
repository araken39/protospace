
# 機能要件
#### トップページ
- 投稿のためのタブ
- Myページ
- プロフィール編集
- サインイン/ログアウト
- 人気表示と日付表示
- タグリスト表示/タグで表示
#### 投稿ページ
- 画像　
- タイトル　
- タグ
#### 表示ページ
- ツイート連携
- LIKEボタン
- ユーザー表示
- コメント機能

# DB設計
#### model
- table
	- column
	- column
	- column
	- column

#### prototype
- prototypes
	- title
	- catch_copy
	- concept
	- user_id
	- main_image
> has_many :sub_images
> belongs_to :user

#### sub_image
- images
	- thumbnail
	- prototype_id
> belongs_to :prototype

#### user
- users
	- name
	- e_mail
	- password
	- member
	- profile
	- works
	- avatar ＊プロフィール画像
> has_many :protptypes
