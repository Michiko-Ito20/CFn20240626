require 'spec_helper'

listen_port = 80

describe package('nginx') do
  it { should be_installed }
end

describe port(listen_port) do
  it { should be_listening }
end

# ローカルIPの代わりにターゲットホストのIPを使用
describe command("curl http://#{ENV['TARGET_HOST']}:#{listen_port}/ -o /dev/null -w \"%{http_code}\\n\" -s") do
  its(:stdout) { should match /^200$/ }
end
