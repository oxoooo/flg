require 'pathname'
require 'fileutils'

module Flg
  module Shell
    def shell(str)
      exec(str) if !str.nil? and str != ''
    rescue ArgumentError
      nil
    end

    def file(path)
      pathname = Pathname.new path
      FileUtils.mkdir_p pathname.dirname.to_s
      File.open(path, 'w+')
    end
  end
end