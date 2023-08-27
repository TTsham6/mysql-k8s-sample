# mysql-k8s-sample
MySQLコンテナをk8sで起動するサンプル

## ディレクトリ構成
```
mysql-k8s-sample
  - docker // dockerコンテナ関係
  - kube   // k8s関係
```

## 構築手順

### 1.docker composeでDockerイメージを作成してDocker Hubにプッシュする
```sh
docker compose build
docker login
docker push your-repository/sample-mysql:1.0 # 任意のリポジトリ名
```

### 2.マニフェストをk8sに適用し起動する
```sh
cd kube
kubectl apply -f 1-db-namespace.yml
kubectl apply -f 2-db-secret.yml
kubectl apply -f 3-db-pvc.yml
kubectl apply -f 4-db-deployment.yml
kubectl apply -f 5-db-service.yml
```