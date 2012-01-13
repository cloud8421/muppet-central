require File.expand_path('./../../recipe_helper', __FILE__)

policy :tools, :roles => :server do
  requires :vim
  requires :tree
  requires :wget
end

deployment do

  delivery :capistrano

  source do
    prefix   '/usr/local'
    archives '/usr/local/sources'
    builds   '/usr/local/build'
  end

end
