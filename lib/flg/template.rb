require 'erb'
require 'ostruct'

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

    def render(name, path, data)
      template = File.read("./generators/templates/#{name}")
      str = ErbalT::render_from_hash(template, data)
      puts str
    end
  end
end