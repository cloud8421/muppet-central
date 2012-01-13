require './recipe_helper'

policy :monit, :roles => :server do
  requires :ruby
  requires :monit_config
end

deployment do

  delivery :capistrano

  source do
    prefix   '/usr/local'
    archives '/usr/local/sources'
    builds   '/usr/local/build'
  end

end
