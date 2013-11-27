lib = File.expand_path("../../lib", __FILE__)
$:.unshift(lib) unless $:.include?( File.expand_path(lib) )

require "rspec"
require "data_structure"