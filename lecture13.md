# lecture13 VSCode×CircleCI×CloudFormation×Ansible×Serverspecで実現するインフラ自動構築＆テストパイプライン

## 内容
CircleCIを用いて、Ansibleによる構成管理とServerspecによるテストを自動化

## 開発環境
- Windows  
- VSコード  

## 動作環境
DoCker  
 ``` cimg/python3.13.3  ```   
 Python  
 ``` 3.13.3 ```   
 Ansible  
 ``` 10.7.0 ```   
 ansible-core  
 ``` 2.17.12 ``` 

## CircleCI
- Pipeline
![Pipeline](./lecture13image\CircleCI_Pipelines5(1).png) 
![Pipeline](./lecture13image\CircleCI_Pipelines5(2).png) 

- cfn-lint
![cfn-lint](./lecture13image\CircleCI_Pipelines1.png)

- setup-cfn1
![setup-cfn1](./lecture13image\CircleCI_Pipelines2(1).png)
![setup-cfn1](./lecture13image\CircleCI_Pipelines2(2).png)

- ansible-playbook
![ansible-playbook](./lecture13image\CircleCI_Pipelines3(1).png)
![ansible-playbook](./lecture13image\CircleCI_Pipelines3(2).png)

- serverspec
![serverspec](./lecture13image\CircleCI_Pipelines4(1).png)
![serverspec](./lecture13image\CircleCI_Pipelines4(2).png)

## 構成図
![構成図](./lecture13image\lecture13drawio.png)

## 所感
- ``` ansible-galaxy init myrole ```のコマンドがVSコード上ではどうしても実行できなかったため、Cloud9を使って  
ロール（myrole）を作成しました。  その後、VSコード側で``` git pull ```を行い、ローカルに取り込むことで対応しました。

- 当初はAnsibleでロールを使う予定だったにもかかわらず、``` hosts: localhost ```と書いてしまっていたため、  
EC2のPublic IPとの接続方法でつまずくことになりました。

- EC2と接続するために、SSH接続 → SSM接続 → SSHとSSMの併用、と複数の方法を2週間ずつ試しながら格闘  
しました。最終的には、動作した構成のコードを丁寧に読み解き、必要な設定を書き出しながら、SSHを使った  
最小限の設定に落ち着きました。これにより、  CloudFormation → Ansible の流れがつながり、ようやく  
一安心となりました。

- 今回の反省点としては、構築の流れ自体は当初の想定通りだったものの、具体的な接続方法を十分に理解  
しないまま進めてしまったため、ChatGPTやGitHub Copilot  といった生成AIの提案に振り回され、あと一歩の  
ところで無駄に時間がかかってしまった点です。

- 最も重要だと感じたのは、まず他人が書いた動くコードを時間をかけて読み解くという「第一段階」の積み重ね  
でした。基礎の理解をおろそかにせず、地に足のついた検証が必要だと強く実感しました。