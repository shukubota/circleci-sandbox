## 事前準備
### gcloudのインストール
https://cloud.google.com/sdk/docs/install?hl=ja

## エミュレータで動かす
https://cloud.google.com/spanner/docs/emulator?hl=ja

### エミュレータの起動
```shell
gcloud emulator spanner start
``` 


```shell
export SPANNER_EMULATOR_HOST=localhost:9010 // grpc用
spanner-cli -p emulator -i test-instance -d example-db
```

### 注意点
https://github.com/GoogleCloudPlatform/cloud-spanner-emulator

データの永続化はできない。