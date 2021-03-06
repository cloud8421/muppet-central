package :vim do

  apt 'vim'
  transfer "#{File.dirname(__FILE__)}/../conf/vim/vimrc", '.vimrc'

  verify do
    has_executable 'vim'
    has_file '.vimrc'
  end

end
