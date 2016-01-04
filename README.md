docker-web-playground
===============

# 概要
DockerHubからnginxのコンテナイメージを取得し、
dockerコンテナを立ち上げてcontents内をブラウザで見れるようにします。

# 前提条件
dockerをインストールしていること。

# 使い方
## コンテナ起動

``` ./start.sh [コンテナ名] [ポート] ```  

指定したコンテナ名でnginxが動作するコンテナを立ち上げます。  
``` http://(ホストのIPアドレス):(指定したポート) ``` にアクセスするとcontentsフォルダ内に配置したhtmlソースが表示されます。

## コンテナ終了

``` ./stop.sh [コンテナ名] ```  

指定したコンテナを終了し削除します。

## コンテナ再起動

``` ./restart.sh [コンテナ名] [ポート] ```  

なお、コンテナ名、ポートを省略するとデフォルト設定を使用します。
