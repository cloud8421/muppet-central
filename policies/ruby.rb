require File.expand_path('./../../recipe_helper', __FILE__)

policy :ruby, :roles => :server do
  requires :ruby_dependencies
  requires :ruby
  requires :bundler
  requires :rake
end

deployment do

  delivery :capistrano

  source do
    prefix   '/usr/local'
    archives '/usr/local/sources'
    builds   '/usr/local/build'
  end

end
