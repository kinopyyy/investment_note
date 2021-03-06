

### アプリ名
  #### 〜投資脳を作ろう〜
  ![](https://i.gyazo.com/5cc71cc0db96cd05db40e22ea09893dc.png)
  
  #### 人生100年時代、不況でも正しくお金を使えるマネーリテラシーを。

### 概要(このアプリでできることを書いて下さい)
  毎日の支出を「投資・消費・浪費」で分類。日々「将来リターン」があるお金の使い方ができているかを可視化します。
    投資＝価格以上の価値があるもの<br>
    消費＝価格と同等の価値があるもの<br>
    浪費＝価格以下の価値があるもの<br>

### サイトURL
- http://54.238.80.143/

### Basic認証
- ユーザー名　admin 
- パスワード　2222

    
### 制作背景(意図)
「投資脳」になって最高の人生を<br><br>

 このアプリでは、リターンが大きいお金の使い方の癖をつけていただきます。<br>
 やり方は簡単。日頃の支出を「投資か？消費か？浪費か？」の３つの分類に分けるだけ。



### DEMO(gifで動画や写真)

![](https://i.gyazo.com/6728f18e4db9964883f078f5ba3f7c44.png)





### 工夫したポイント  
  「投資」というと難しく感じるので、少ない画面で簡潔できるように

### 使用技術(開発環境)
  Ruby/Ruby on Rails/MySQL/Github/AWS/Visual Studio Code


### 課題や今後実装したい機能
  - 月ごとや週ごとに円グラフを実装

  - ファイナンシャルプランナーからの意見を取り入れて
  ・投資と浪費の金額目標に対し上限を超えたらアラーム
  ・1週間ごとに、目標を達成したら達成マークがつくように
  ・達成したらポイントがもらえると面白い（企業タイアップ）


### 更新履歴
- 8/13  新規ユーザー登録機能実装


### DB設計

#### postsテーブル
|Column|Type|Options|
|------|----|-------|
|item|string|null: false|
|price|string|null: false|
|category|text|null: false|
|note|text|null: false|
|day|date|null: false|

##### Association
belongs_to :user


#### usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|nickname|string|null: false|

##### Association
has_many :posts