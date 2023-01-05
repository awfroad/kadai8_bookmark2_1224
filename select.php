<?php

// function h($str)
// {
//   return  htmlspecialchars($str, ENT_QUOTES);
// }

//1.  DB接続します
// try {
//   //Password:MAMP='root',XAMPP=''
//   $pdo = new PDO('mysql:dbname=books_db;charset=utf8;host=localhost', 'root', '');
// } catch (PDOException $e) {
//   exit('DBConnectError'.$e->getMessage());
// }
require_once('funcs.php');
$pdo = db_conn();

//２．データ取得SQL作成
$stmt = $pdo->prepare("SELECT * FROM googlebooks_table");
$status = $stmt->execute();

//３．データ表示
$view="";
if ($status==false) {
    //execute（SQL実行時にエラーがある場合）
  $error = $stmt->errorInfo();
  exit("ErrorQuery:".$error[2]);

}else{
  //Selectデータの数だけ自動でループしてくれる
  //FETCH_ASSOC=http://php.net/manual/ja/pdostatement.fetch.php
  while( $result = $stmt->fetch(PDO::FETCH_ASSOC)){
    // $view .= '<p>' . $result['No'] . ' / ' . h($result['title']) . ' / ' . h($result['comment']) . ' / ' . h($result['book_url']) . '</p>' ;
    $No = $result['No'];
    $query = $result['query'];
    $title = h($result['title']);
    $authors = h($result['authors']);
    $publishedDate = h($result['publishedDate']);
    $link = $result['link'];
    $thumbnail = $result['thumbnail'];
    $previewLink = $result['previewLink'];
    $date = $result['date'];

    $view .= '<tr>';
    $view .= '<td>'.$No.'</td>';
    $view .= '<td>'.$query.'</td>';
    $view .= '<td>'.$date.'</td>';
    $view .= '<td><a target="_blank" href="' . $previewLink . '"><img src="'. $thumbnail .'"></a></td>';
    $view .= '<td><a target="_blank" href="' . $link . '">' . $title . '</a></td>';
    $view .= '<td>' . $authors . '</td>';
    $view .= '<td>' . $publishedDate . '</td>';
    $view .= '<td><a href="detail.php?id=' . $No . '">詳細</a></td>';
    $view .= '<td><a href="delete.php?id=' . $No . '">削除</a></td>';
    $view .= '</tr>';
  }
}
?>

<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>ブックマーク表示</title>
<link rel="stylesheet" href="css/reset.css">
<link rel="stylesheet" href="css/select.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=M+PLUS+1p&display=swap" rel="stylesheet">

<!-- <style>div{padding: 10px;font-size:16px;}</style> -->
</head>
<body id="main">
<!-- Head[Start] -->
<header>
  <nav class="navbar navbar-default">
    <div class="container-fluid">
      <div class="navbar-header">
      <a class="modoru" href="index.php">検索</a>
      </div>
    </div>
  </nav>
</header>
<!-- Head[End] -->

<!-- Main[Start] -->
<div class="wrapper">
  <table class="container jumbotron">
  <tr>
    <th>No</th>
    <th>検索ワード</th>
    <th>登録日</th>
    <th>画像<br>※クリック→レビュー</th>
    <th>タイトル<br>クリック→Google Books</th>
    <th>著者</th>
    <th>出版日</th>
    <th>詳細</th>
    <th>削除</th>
  </tr>
    <?= $view ?>
  </table>
</div>
<!-- Main[End] -->

</body>
</html>
