require 'pathname'
require 'fileutils'


module Flg
  module Shell
    def shell(str)
      cmd = TTY::Command.new
      cmd.run str
    end

    def file(path)
      pathname = Pathname.new path
      FileUtils.mkdir_p pathname.dirname.to_s
      File.open(path, 'w+')
    end
  end
end