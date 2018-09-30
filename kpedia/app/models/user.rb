class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  
  # サインイン時にパスワードを暗号化してDBに登録 
  devise :database_authenticatable, 
        # サインアップ処理、ユーザの編集と削除を可能にする
        :registerable,
        # パスワードのリセットを可能にする
        :recoverable, 
        # ユーザを記憶するためのトークンの生成と削除を行う
        :rememberable, 
        # メールとパスワードのバリデーションを行う
        :validatable,
        # メールに記載されているURLをクリックすることで認証が完了するというプロセスを有効化
        :confirmable, 
        # 規定回数ログインに失敗したら、アカウントをロックする
        :lockable, 
        # 一定時間でセッションを破棄
        :timeoutable, 
        # サインインの回数、タイムスタンプとIPアドレスを記録
        :trackable
end
