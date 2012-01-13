package :monit do

  description 'Monit server monitoring tool'

  apt 'monit' do
    pre :install, 'apt-get update'
  end

  verify do
    has_file '/etc/init.d/monit'
  end

end

package :monit_config do

  transfer "#{File.dirname(__FILE__)}/../conf/monit", '/etc/default/monit' do
    pre  :install, 'chmod 0777 /etc/default/monit'
    post :install, 'chmod 0755 /etc/default/monit'
  end

  transfer "#{File.dirname(__FILE__)}/../conf/monitrc", '/etc/monit/monitrc' do
    pre  :install, 'chmod 0777 /etc/monit/monitrc'
    post :install, 'chmod 0700 /etc/monit/monitrc'
    post :install, '/etc/init.d/monit start'
  end

  requires :monit

  verify do
    has_process 'monit'
  end

end
