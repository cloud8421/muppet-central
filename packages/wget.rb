package :wget do

  apt 'wget'

  verify do
    has_executable 'wget'
  end

end
