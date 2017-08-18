require 'erb'
require 'ostruct'
require 'fileutils'
require 'pathname'

module Flg
  module Template
    def template(name: nil, data: nil, path: nil)
      TTY::File.copy_file(
        "./generators/templates/#{name}",
        path,
        context: OpenStruct.new(data)
      )
    end
  end
end