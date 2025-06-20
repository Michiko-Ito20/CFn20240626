require 'serverspec'
require 'net/ssh'
require 'ed25519'  # ED25519鍵を使用する場合
require 'bcrypt_pbkdf'  # ED25519鍵を使用する場合

set :backend, :ssh

if ENV['ASK_SUDO_PASSWORD']
  begin
    require 'highline/import'
  rescue LoadError
    fail "highline is not available. Try installing it."
  end
  set :sudo_password, ask("Enter sudo password: ") { |q| q.echo = false }
else
  set :sudo_password, ENV['SUDO_PASSWORD']
end

host = ENV['TARGET_HOST']

options = Net::SSH::Config.for(host)

# ユーザー名の設定
options[:user] = ENV['SSH_USER'] || 'ec2-user'

# ED25519鍵を使用する場合
options[:keys] = ['~/.ssh/id_ed25519']  # ED25519秘密鍵のパス
options[:keys_only] = true
options[:auth_methods] = ['publickey']

# パスワード認証を使用する場合
# options[:password] = ENV['SSH_PASSWORD']
# options[:auth_methods] = ['password']

# キーボードインタラクティブ認証を使用する場合
# options[:auth_methods] = ['keyboard-interactive']

set :host,        options[:host_name] || host
set :ssh_options, options

# デバッグ用にSSH設定を表示
puts "Host: #{host}"
puts "SSH User: #{options[:user]}"
puts "SSH Keys: #{options[:keys]}"

# Disable sudo
# set :disable_sudo, true


# Set environment variables
# set :env, :LANG => 'C', :LC_MESSAGES => 'C'

# Set PATH
# set :path, '/sbin:/usr/local/sbin:$PATH'
