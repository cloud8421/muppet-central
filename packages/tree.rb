package :tree do

  apt('tree')

  verify do
    has_executable 'tree'
  end

end
