#!/usr/bin/env ruby

require 'optparse'
require 'optparse/time'
require 'ostruct'
require 'pp'

class FindAndReplace

  #
  # Return a structure describing the options.
  #
  def self.parse(args)

    # These are the default values
    options = OpenStruct.new
    options.verbose = false

    opts = OptionParser.new do |opts|
      opts.banner = "Usage: example.rb [options]"

      opts.separator ""
      opts.separator "Specific options:"

      # Boolean switch.
      opts.on("-v", "--[no-]verbose", "Run verbosely") do |v|
        options.verbose = v
      end

      opts.separator ""
      opts.separator "Common options:"

      # No argument, shows at tail. This will print an options summary.
      opts.on_tail("-h", "--help", "Show this message") do
        puts opts
        exit
      end
    end

    opts.parse!(args)
    options
  end  # parse()

end # class FindAndReplace 

options = FindAndReplace.parse(ARGV)
pp options

