<!DOCTYPE html>
<html lang="ja">
    
    <head>
        <meta charset="UTF-8">
        <title>データ登録</title>
        <link href="css/reset.css" rel="stylesheet">
        <link href="css/index.css" rel="stylesheet">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=M+PLUS+1p&display=swap" rel="stylesheet">
    <style>
        div {
            padding: 10px;
            font-size: 16px;
        }
    </style>
</head>

<body>

    <!-- Head[Start] -->
    <!-- <header>
        <nav class="">
            <div class="">
                </div>
            </nav>
        </header> -->
        <!-- Head[End] -->
        
        <!-- Main[Start] -->
        
    <div class="wrapper">

        <table class="search">
            <form method="get" action="insert.php">
                <tr>
                    <th> 検索</th>
                    <th>一覧</th>
                </tr>
                <tr>
                    <td class="td1">
                        <div class="search_window">
                            <input id="query" type="text" name="query">
                            <input class="submit" type="submit" value="送信" >
                        </div>
                    </td>
                    <td class="td2">
                        <a class="" href="select.php">
                            <img src="img/Google_Chrome_icon_(February_2022).svg.png" alt="">
                        </a>
                    </td>
                </tr>
            </form>
        </table>
    </div>
    <!-- Main[End] -->

</body>

</html>
