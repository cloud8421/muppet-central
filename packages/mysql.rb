package :mysql, :provides => :database do

  apt 'mysql-server'

  verify do
    has_executable 'mysqld'
    has_process 'mysqld'
  end

end

package :mysql_ruby do

  description 'Ruby MySQL database driver'

  apt %w(libmysqlclient15-dev libmysql-ruby)
  gem 'mysql2'

  requires :mysql

  verify do
    has_gem 'mysql2'
  end

end
