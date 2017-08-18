require 'erb'
require 'ostruct'
require 'fileutils'
require 'pathname'

module Flg
  module Template
    class ErbalT < OpenStruct
      def self.render_from_hash(t, h)
        ErbalT.new(h).render(t)
      end

      def render(template)
        ERB.new(template).result(binding)
      end
    end

    def render(name: nil, data: nil, path: nil)
      template = File.read("./generators/templates/#{name}")
      str = ErbalT::render_from_hash(template, data)
      if File.exist?(path)
        prompt = TTY::Prompt.new
        if prompt.no?("#{path} replace?")
          puts 'ignore: ' + path
          save_file(path, str)
        else
          return
        end
      else
        save_file(path, str)
        puts 'created: ' + path
      end
    end

    def save_file(path, str)
      pathname = Pathname.new path
      FileUtils.mkdir_p pathname.dirname.to_s
      File.open(path, 'w+') do |f|
        f.puts str
      end
    end
  end
end