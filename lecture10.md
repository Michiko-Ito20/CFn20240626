# lecture10の学び

## テンプレート(YAMLファイル)の書き方について  
-  作り方やテンプレートの概要を作るまでは割とスムーズにいった 
- スタックに入れた際に動かなくなるのはどのテンプレートでも起こったので、  
  その度に原因究明が難航した 
- 同じものを表現していると思っても、実は違うということもあり思い込みが進度を遅らせた  
  (MySQLのバージョンが、インスタンスのEngineVersionと、DBParameterGroupのFamilyで違っていたなど)  
- Outputsは何もrefでは論理idを参照、GetAttを使用すると論理id以外も参照指定する事ができると分かった  
- キーペアの設定でわかりやすい名前を新たにつけてしまったが、実際にはEC2Instanceのキーペアを開いて、  
  今回使えそうなのをキーペアにするが流用ということが正しかった  
- エラーの探し方は、「どこなの？」「何がどこで起こっているのか」から始まる  
  どこなの？にはそれが自由なのか、制限があるのか調べる。これが「なぜ」のヒント  
- !ImportValue lecture10-privatesubnet01-idを2回書いており、InvalidRequestのエラーが出た  
  ありがちなエラーなのでVSコードで確認するよう注意した方が良い 
  
### スタックの画像  
![画像1](lecuture10image\lecture10-CFn.png)
### VPC接続画像 
![画像2](lecuture10image\lecture10-CFn-VPC.png)
### EC2接続画像  
![画像3](lecuture10image\lecture10-CFn-EC2.png)
### RDS接続画像  
![画像4](lecuture10image\lecture10-CFn-RDS.png)
### S3接続画像  
![画像5](lecuture10image\lecture10-CFn-S3.png)

##  GitHubについて改めて 
- YAMLテンプレートの最後は空白行が無いと文字列が終わったと認識しない   

## VSコードについて改めて  
- フォルダからVSコードで開いてリポジトリ全体を見ると見やすいという事を知った  

