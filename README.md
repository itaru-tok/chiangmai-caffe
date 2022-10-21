

# Chiang Mai Café Map
![all-devices-black (1)](https://user-images.githubusercontent.com/75304661/196641522-ecbc2e9a-8ee0-45a7-ae78-a96a4cb24078.png)


## URL
* アプリURL : https://chiangmai-cafe-map.herokuapp.com/ 
(ホーム画面・ヘッダーから、ゲストログインボタンで簡単にログインできます。)

## アプリの特徴
タイ/チェンマイのお気に入りのカフェを記録、共有するアプリです。
* カフェの紹介やレビューができる
* マイページで自分が作成したカフェ・お気に入りのカフェを確認できる
* 写真投稿でカフェの雰囲気がわかる

## アプリの開発背景
タイ/チェンマイは「デジタルのノマドの天国」と言われるほど、至る所にカフェがあり、Wifi速度もどこも爆速のため仕事の場所には困りません。
一方で、多くのカフェがありすぎるため、実際私はカフェ探しに苦労した経験があります。
そこで、オンラインで仕事する人がおすすめできるカフェを共有できたらいいなと考え、このアプリの作成に至りました。

## 使用技術
* 言語：Ruby (3.1.0)
* フレームワーク：Ruby on Rails (6.1.6)
* フロントエンド：HTML/Scss/JavaScript
* DB：PostgreSQL
* インフラ：Heroku/AWS（S3）
* ソースコード管理：GitHub
* 開発環境：MacOS/Visual Studio Code

## 機能一覧
| | 機能 | gem等 |
|:---:|:---:|:---:|
|1 | ログイン・ログアウト | devise |
|2 | ユーザー登録・編集、削除 | devise |
|3 | ゲストログイン機能 | devise |
|4 | アカウント登録、編集、削除 | x |
|5 | カフェ投稿(CRUD) | x |
|6 | 画像投稿機能 | carrierwave/mini-magick |
|7 | 画像カルーセル機能 | Swiper |
|8 | 管理者画面 | ActiveAdmin |
|9 | いいね機能(非同期) | x |
|10 | ページネーション | kaminari |
|11 | レスポンシブデザイン | Bootstrap |

## ER図
<img src="https://user-images.githubusercontent.com/75304661/196647361-95bfb43a-80c4-4091-9a2b-84003b910b95.jpg" width="500px">

## 使い方

### ゲストログイン
![a59ca7c150784e04f0f44a3786e62586](https://user-images.githubusercontent.com/75304661/196659648-991d8a80-9516-4f49-9d67-9d5f203577e6.gif)

### カフェ投稿
<img src="https://user-images.githubusercontent.com/75304661/196686089-a4677487-09bc-4864-93e8-42eb70cbdd08.gif" width="100%">

### マイページ画面
![8f130333f7b41eadc06535dc5958ffdf](https://user-images.githubusercontent.com/75304661/196685849-3150f3fd-7af1-473a-8c09-470a1f50ce72.gif)

## 工夫した点

### タスク管理
1. Git, GitHub を用いたソース管理
2. VSCodeのSource Controlの機能を用いて開発作業を効率化
3. 適切な頻度でのコミット、Pull Request

### UI/UX
* コーヒーの色をモチーフに配色を意識
落ち着いたカラーを選定し、全体に統一感を待たせた
![Screen Shot 2022-10-19 at 19 38 54](https://user-images.githubusercontent.com/75304661/196694378-00154d11-4338-4a13-acf6-fc4032df5822.jpg)

* タイトル等に下記フォントを使用し、おしゃれなカフェを表現
<img src="https://user-images.githubusercontent.com/75304661/196696258-04ad384f-9194-4e60-8c49-9ba77a7347ae.jpg" width="">

### トップページ
* 未ログインでも一部の機能利用制限を除いて、閲覧できるようにした
* ゲストログイン機能を採用し、トップページ上部に分かりやすく配置

### プロフィールページ
* 自信の投稿とお気に入りを表示し、管理のしやすさを意識

### 画像表示
* 投稿画像にはスライド機能を採用

## 追加予定機能
* Googleマップ連携
* 星評価
* Twitterシェア
* コメント機能
* ユーザ同士チャット機能
