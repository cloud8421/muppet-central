require File.expand_path('./../../recipe_helper', __FILE__)

policy :utils, :roles => :server do
  requires :tree
  requires :vim
  requires :git
end

deployment do

  delivery :capistrano

  source do
    prefix   '/usr/local'
    archives '/usr/local/sources'
    builds   '/usr/local/build'
  end

end
