# OTAへ反映ガイドライン
## 前提条件
* Java8以上がインストールされたこと
* データベースに接続できる環境

## ガイドライン
* この[リンク](http://www.graphviz.org/download/) で`graphviz`をダウンロードして、インストールする
* この[リンク](https://github.com/schemaspy/schemaspy/releases) で`schemaspy`をダウンロードして、インストールする
* ダウンロードの後、以下のコマンドを実行する
    ```
    java -jar schemaspy.jar -configFile path/to/config.file
    ```
    設定ファイルサンプル：
    ```
    # type of database. Run with -dbhelp for details
    schemaspy.t=mysql
    # database host
    schemaspy.host=localhost
    #database port
    schemaspy.port=3306
    # database
    schemaspy.db=test
    # database user
    schemaspy.u=root
    #database password
    schemaspy.p=root
    # database shcema
    schemaspy.s=test
    
    # output folder
    schemaspy.o = documents
    ```
    パラメーターの説明：
    * [schemaspy.t] → データベース種類
        * MySQL：```mysql```
        * MSSQL：```sql```
        * Oracle：```ora```
    * [schemaspy.db] → データベース名
    * [schemaspy.u] → データベースユーザー名
    * [schemaspy.s] → データベーススキーマ
    * [schemaspy.p] → データベースパスワード
    * [schemaspy.port] → データベースのポート
        * MySQL：3306
    * [schemaspy.o] → アウトプットファイルの格納フォルダ
        * このフォルダを使って、OTAへアップロードする
       
    その他のパラメータはこの[リンク](https://schemaspy.readthedocs.io/en/latest/configuration/commandline.html#commandline) で参考になる

* 上記のコマンドを実行してから、指定した出力フォルダーをOTAへアップロードする

