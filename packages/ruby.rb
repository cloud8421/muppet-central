package :ruby do
  description 'Ruby Virtual Machine'
  version '1.9.2'
  patchlevel '290'
  source "ftp://ftp.ruby-lang.org/pub/ruby/1.9/ruby-#{version}-p#{patchlevel}.tar.gz" # implicit :style => :gnu
  requires :ruby_dependencies
  verify do
    has_executable 'ruby'
  end
end

package :ruby_dependencies do
  description 'Ruby Virtual Machine Build Dependencies'
  apt %w( bison zlib1g-dev libssl-dev libreadline5-dev libncurses5-dev file ruby1.9-dev)
end

package :bundler do
  gem 'bundler'
  verify do
    has_executable 'bundle'
  end
  requires :ruby
end

package :rake do
  gem 'rake'
  verify do
    has_executable 'rake'
  end
  requires :ruby
end
