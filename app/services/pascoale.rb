module Pascoale
  def self.root
    File.expand_path("#{File.dirname(__FILE__)}/..")
  end
end

require_relative 'pascoale/version'
require_relative 'pascoale/constants'
require_relative 'pascoale/syllable_separator'
require_relative 'pascoale/reflector'
require_relative 'pascoale/edits'
require_relative 'pascoale/formatter'
require_relative 'pascoale/inflector'
