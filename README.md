# 教材シェア
&emsp;教材を投稿し合うアプリケーションです。ユーザーが授業で使っているプリントや参考資料などをアップロードして、投稿できます。
投稿されたデータが一覧に表示され、誰でもその教材をダウンロードすることができます。
<img src="https://i.gyazo.com/31e1770b67f21d61d93808069944f901.gif" width="700">
### URL
- アプリURL：https://teaching-materials-app.herokuapp.com/  （ゲストログインボタンを押すとサインインせず閲覧可能）
- 開発の経緯や工夫・苦労した点などの詳細談を[Qiita](https://qiita.com/suugakusan/items/15b5b6e9b81726344342)に投稿いたしました。
## アプリの特徴
* 各教科ごとに教材の検索ができ、欲しい教材を簡単に手に入れられるようにしました。
* お気に入り登録とフォロー機能があり、自分好みの投稿を保存することができます。
## 使用イメージ
### ゲストログイン
<img src="https://i.gyazo.com/3cb08554f75f96b7731dcb99c953d8b3.gif" width="500">

### お気に入り機能
<img src="https://i.gyazo.com/4c99ee7be44f1de86904d575fcb36101.gif" width="500">

### フォロー機能
<img src="https://i.gyazo.com/457c13389149adb6bfb183dde289884f.gif" width="500">

### 検索機能
<img src="https://i.gyazo.com/f738f95ee718f6fd18a65662b5aad8cd.gif" width="500">
<img src="https://i.gyazo.com/991eafb5c53d85f1123edf03c6ccd242.gif" width="500">

## アプリ作成背景
&emsp;私が教員として働く中で、生徒と向き合う時間が十分に取れないほど、数多くの仕事で溢れていました。本来であれば、教材研究する時間を確保し、生徒に実りある学習を提供しなければいけません。
しかし、それ以外の業務に時間をかけており、教材研究が全くできないのが今の現状です。同僚も同じように、授業の準備をする時間がないことを悩んでいました。  
 &emsp;そこで、教材を共有する場を提供することができれば、教員が抱える課題の解決の一助になるのではないかと思い制作しました。

## 工夫した点
* ユーザーの入力負担を減らすために、教科をセレクトボックスで選択できるよう実装しました。
* 検索機能を、内容と教科で２つ作成しました。
### 機能一覧
|  |機能  |gem  |
|:---: |:---: |:---: |
|1  |ログイン・ログアウト  |×  |
|2  |アカウント登録  |×  |
|3  |教材検索 |×  |
|4  |教材投稿  |carrierwave  |
|5  |ページネーション |pagy  |
|6  |レスポンシブ  |Bootstrap  |
|7  |ゲストログイン  |×  |
|8  |記事投稿機能(CRUD)  |×  |
|9  |お気に入り機能(非同期)  |×  |
|10  |フォロー機能  |×  |
### ER図
![ER図](https://user-images.githubusercontent.com/87798070/133949142-9b84452c-5945-45e2-8cab-1854cbfff1d7.png)
### 使用技術
* 言語 : Ruby (3.0.0)
* フレームワーク：Ruby on Rails (6.1.4.1)
* フロントエンド : HTML&CSS/Bootstrap/JavaScript/SCSS
* DB : PostgreSQL
* インフラ : Heroku(ステージング環境→本番環境)+AWS(S3)
* ソースコード管理：GitHub(Projectsのカンバン方式でタスクを管理)
### 開発環境
* OS : windows Lenovo
* Visual Studio Code
