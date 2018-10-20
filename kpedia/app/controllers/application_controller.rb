# require 'digest/md5'

class ApplicationController < ActionController::Base
    # # Digest 認証の認証領域（realm）
    # REALM = 'SecretZone'.freeze
    # # ユーザ名 => （ユーザ名：Realm: パスワード）のMD5ハッシュ値
    # USERS = { 'user1' => Digest::MD5.hexdigest(['user1', REALM, 'password'].join(':')) }.freeze

    # CSRF対策========
    protect_from_forgery with: :exception
    # ===============
    before_action :authenticate_user!
    rescue_from ActiveRecord::RecordNotFound, with: :not_found

    def not_found
        render 'errors/404', status: 404
    end
end
