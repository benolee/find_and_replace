#!/usr/bin/env ruby

require 'find'

class FindAndReplace
end

if ARGV[0] == '--help'
  puts "Help"
# puts "find_and_replace.rb Finds and replaces strings in the given directory."
# puts "syntax: ruby find_and_replace PATH RegEx"
  exit
end

Find.find(ARGV[0]) do |path|
  # ...
end
