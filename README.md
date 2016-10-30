# Ajaxのテスト

Ajaxを使うことでページ遷移無しでモデルの更新とページ内容を更新する

1. form_forでremote: trueオプションを付けることでsubmit時JSからcreateアクションにアクセスする
2. createアクションで従来通りモデルを更新する。この時更新後のデータをクラス変数に入れておく
3. 暗黙的に呼ばれるcreate.js.erbで次のようにする
  ```$("#post_list").html("<%= escape_javascript(render('post/list')) %>");```
5. この例ではdiv id=post_listの要素がJSによってpost/_list.html.erbで書き換えられる

