require File.join(File.dirname(__FILE__), '..', 'lib', 'page_rankr')
require 'rspec'
require 'fuubar'
require 'vcr'

VCR.config do |c|
  c.cassette_library_dir = 'fixtures/vcr_cassettes'
  c.stub_with :typhoeus
end

Rspec.configure do |c|
  c.formatter = Fuubar
  c.color_enabled = true
end