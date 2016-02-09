
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

## メイン機能に必要なDB

#### prototype
- prototypes
	- title
	- catch_copy
	- concept
	- user_id
###### association
- has_many :sub_images
- has_many :comments
- belongs_to :user
- has_many :likes

#### images
- images
	- thumbnail
	- prototype_id
	- main_or_sub
###### association
- belongs_to :prototype

#### user
- users
	- name
	- e_mail
	- password
	- member
	- profile
	- works
	- avatar ＊プロフィール画像
###### association
- has_many :protptypes
- has_many : comments
- has_many :likes

## 機能追加の際に追加するDB

#### comment
- comments
		- text
		- user_id
		- prototype_id
###### association
- belongs_to :prototype
- belongs_to :user

####  likes (便利なGemがあるらしい)
- likes
	- int
	- prototype_id
	- user_id
###### association
- belongs_to :prototype
- belongs_to :user

### tags （acts_as_taggable_onが自動で色々やってくるれる）

>
