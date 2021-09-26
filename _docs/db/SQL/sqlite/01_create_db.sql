-- パスの変更
set path=D:\IDE\lib\database\sqlite-tools-win32-x86-3360000
-- コマンドラインツールの起動とデータベース接続
sqlite3 employeedb.sqlite3
-- コマンドラインツールの終了（データベース接続の切断）
sqlite> .exit
-- コマンドラインツールを起動して外部スクリプトを実行
sqlite3 employeedb.sqlite3 < 02_init_tabs.sql
