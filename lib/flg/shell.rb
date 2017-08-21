require 'pathname'
require 'fileutils'
require 'irb'

module Flg
  module Shell
    def shell(str, &black)
      cmd = TTY::Command.new
      cmd.run str, &black
    end

    def file(path)
      pathname = Pathname.new path
      FileUtils.mkdir_p pathname.dirname.to_s
      File.open(path, 'w+')
    end

    def say(str)
      prompt = TTY::Prompt.new
      prompt.say str
    end

    def ok(str)
      prompt = TTY::Prompt.new
      prompt.ok str
    end

    def warn(str)
      prompt = TTY::Prompt.new
      prompt.warn str
    end

    def error(str)
      prompt = TTY::Prompt.new
      prompt.warn str
    end

    def copy_file(name, path)
      pathname = "./generators/assets/#{name}"
      TTY::File.copy_file pathname, path
    end

    def copy_dir(name, path)
      pathname = "./generators/assets/#{name}"
      TTY::File.copy_directory pathname, path
    end

    def create_file(path, str)
      TTY::File.create_file path, str
    end

    def create_dir(path)
      TTY::File.create_dir path
    end

    def download_file(url, path)
      TTY::File.download_file url, path
    end

    def append_to_file(name, str)
      TTY::File.append_to_file name, str
    end

    def prepend_to_file(name, str)
      TTY::File.prepend_to_file name, str
    end

    def remove_file(path)
      TTY::File.remove_file path
    end

  end
end