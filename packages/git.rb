package :git do

  apt 'git-core'

  verify do
    has_executable 'git'
  end

end
