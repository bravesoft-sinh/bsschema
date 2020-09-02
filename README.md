# OTAへ反映ガイドライン
## 前提条件
* Java8以上がインストールされたこと
* データベースに接続できる環境

## ガイドライン
* この[リンク](http://www.graphviz.org/download/) で`graphviz`をダウンロードして、インストールする
* この[リンク](https://github.com/schemaspy/schemaspy/releases) で`schemaspy`をダウンロードして、インストールする
* ダウンロードの後、以下のコマンドを実行する
    ```
    java -jar schemaspy.jar -t dbType -dp C:/sqljdbc4-3.0.jar -db dbName -host server -port 1433 [-s schema] -u user [-p password] -o outputDir
    ```
    パラメーターの説明：
    * [-t databaseType] → データベース種類
        * MySQL：```mysql```
        * MSSQL：```sql```
        * Oracle：```ora```
    * [-db dbName] → データベース名
    * [-u user] → データベースユーザー名
    * [-s schema] → データベーススキーマ
    * [-p password] → データベースパスワード
    * [-port databaseport] → データベースのポート
        * MySQL：3306
    * [-o outputDirectory] → アウトプットファイルの格納フォルダ
        * このフォルダを使って、OTAへアップロードする
    * [-dp pathToDrivers] →　データベース接続ドライバー
    * [-hq] or [-lq] → ダイアグラムの画質。
        * hq：高い画質
        * lq：低い画質
    * [-imageformat outputImageFormat] → 出力される画像のフォーマット
       * svg: ```-imageformat svg```
       
    その他のパラメータはこの[リンク](https://schemaspy.readthedocs.io/en/latest/configuration/commandline.html#commandline) で参考になる

* 上記のコマンドを実行してから、指定した出力フォルダーをOTAへアップロードする