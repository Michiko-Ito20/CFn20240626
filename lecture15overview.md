# lecture15 overview

## orbs
- aws-cli: circleci/aws-cli@3.1.3を使用

## commands
- get public ipを宣言  
  EC2のパブリックIPを取得・環境変数に設定
- setup-ssh-configを宣言  
  SSH接続に必要なEC2パブリックIPやpemファイルを設定  
  keyペア・所有者権限等も設定  

## jobs
- pre-test  
  lintをインストール 

- infra test  
  CFnをデプロイしてすぐに削除するtask catをインストール  
  上記に必要なタイムアウトや、一時的なS3バケットのファイルを強制削除コマンドを追加  

- infra deploy  
  CFnのスタック作成

- middle deploy  
  Ansibleをデプロイ  

- middle test  
  Serverspecをデプロイ  

## workflows  
- デプロイするタスクを上から順番に指示