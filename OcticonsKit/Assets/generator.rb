#!/usr/bin/env ruby

class Octicon
  attr_accessor :name, :code
  def initialize(name, code)
    @name = name
    @code = code
  end

  def code_for_enum_definition
     "case #{name} = \"\\u\{#{code}\}\""
  end

  def code_for_extension
    "(\"#{name}\", .#{name})"
  end
end

class SwiftGen
  def initialize
    codepoints = File.open(File.expand_path('./../octicons.txt', __FILE__), 'r')
    @octicons_enum_file = File.expand_path('./../../Classes/Octicons.swift', __FILE__)
    @octicons_enum_extension_file = File.expand_path('./../../../Example/OcticonsKit/Octicons.swift', __FILE__)

    @icons = []
    regex = /([\w-]+):before .*\:\"\\(.+)\"/
    codepoints.each_line do |line|
      matched = line.match(regex)
      next unless matched
      old_style_name = matched[1].split('-').collect(&:capitalize).join
      new_style_name = old_style_name[0].downcase + old_style_name[1..-1]
    	code = matched[2].gsub(";", "")
      @icons << Octicon.new(new_style_name, code)
    end
  end

  def gen_enum_definition
    File.open(@octicons_enum_file, 'w') do |file|
      file.puts <<-SWIFT
//
// THIS FILE IS GENERATED, DO NOT MODIFY BY HAND
//
// Use generate.rb to generate when Octicons.txt is updated
//
public enum Octicons: String {
    #{@icons.map(&:code_for_enum_definition).join("\n    ")}
}
SWIFT
    end
  end

  def gen_enum_extension
    File.open(@octicons_enum_extension_file, 'w') do |file|
      file.puts <<-SWIFT
//
// THIS FILE IS GENERATED, DO NOT MODIFY BY HAND
//
// Use generate.rb to generate when Octicons.txt is updated
//
import OcticonsKit

extension Octicons {
    static let tuples: [(String, Octicons)] =
      [
        #{@icons.map(&:code_for_extension).join(",\n        ") }
      ]
}
SWIFT
    end
  end
end

if __FILE__ == $0
    gen = SwiftGen.new
    gen.gen_enum_definition()
    gen.gen_enum_extension()
end
