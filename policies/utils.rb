require File.expand_path('./../../recipe_helper', __FILE__)

policy :utils, :roles => :server do
  requires :git
  requires :build_essential
end

deployment do

  delivery :capistrano

  source do
    prefix   '/usr/local'
    archives '/usr/local/sources'
    builds   '/usr/local/build'
  end

end
