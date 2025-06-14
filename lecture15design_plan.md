# lecture15design_plan

- orbではなく、Dockerを使用
- commandsでAWSCLIを定義する
- SSH接続にする
- lintは作成する
- taskcat（自動でCFnを作成・削除してくれるコマンド）は作成しない
- taskcatを入れないのでCFnの作成はrunコマンドで作成
- .cfgファイルは設定しない
- 確認コマンドは、始めは最低限にする  
  ※runコマンドでVerify Ansible Installation等を設定しない
- DeleteStackはひとまず入れない
