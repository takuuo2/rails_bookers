# DMM WEBCAMPコンテンツ

DMM WEBCAMPの学習コンテンツアプリケーションを作成してみようの研修課題です。

## 使い方

railsを利用したアプリケーションです。サーバーを起動させて利用してください。


<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <title>ハンバーガーメニュー</title>
    <style>
        /* ヘッダーの基本デザイン */
        .header {
            background-color: #333;
            color: white;
            padding: 10px 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .nav-links {
            display: flex;
            gap: 15px;
        }

        .nav-links a {
            color: white;
            text-decoration: none;
            padding: 8px;
        }

        /* ハンバーガーアイコン（初期非表示） */
        .hamburger {
            display: none;
            flex-direction: column;
            cursor: pointer;
        }

        .hamburger span {
            height: 3px;
            width: 25px;
            background: white;
            margin: 4px 0;
        }

        /* メニュー（ホバーで表示） */
        .dropdown-menu {
            display: none;
            position: absolute;
            background-color: #444;
            right: 20px;
            top: 60px;
            flex-direction: column;
        }

        .dropdown-menu a {
            padding: 10px 20px;
            white-space: nowrap;
        }

        .hamburger:hover + .dropdown-menu {
            display: flex;
        }

        /* 画面幅が狭くなった時（768px以下） */
        @media (max-width: 768px) {
            .nav-links {
                display: none;
            }
            .hamburger {
                display: flex;
            }
        }
    </style>
</head>
<body>
    <header class="header">
        <div class="logo">MySite</div>

        <!-- 通常リンク -->
        <nav class="nav-links">
            <a href="/home.jsp">ホーム</a>
            <a href="/about.jsp">概要</a>
            <a href="/contact.jsp">お問い合わせ</a>
        </nav>

        <!-- ハンバーガーメニュー -->
        <div class="hamburger">
            <span></span>
            <span></span>
            <span></span>
        </div>

        <!-- ハンバーガーにホバーで出るメニュー -->
        <div class="dropdown-menu">
            <a href="/home.jsp">ホーム</a>
            <a href="/about.jsp">概要</a>
            <a href="/contact.jsp">お問い合わせ</a>
        </div>
    </header>
</body>
</html>
