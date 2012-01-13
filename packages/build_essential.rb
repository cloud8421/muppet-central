package :build_essentials do

  description 'Libraries needed to compile sources'

  apt 'build-essential' do
    pre :install, 'apt-get update'
  end

  verify do
    has_executable 'g++'
  end

end
