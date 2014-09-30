# -*- encoding: utf-8 -*-

require File.expand_path("../lib/netcdf/version.rb", __FILE__)

Gem::Specification.new do |s|
  s.name = "ruby-netcdf"
  s.version = NumRu::NetCDF::VERSION

  s.summary = "Ruby interface to NetCDF"
  s.description = "RubyNetCDF is the Ruby interface to the NetCDF library built on the NArray library, which is an efficient multi-dimensional numeric array class for Ruby."

  s.authors = ["Takeshi Horinouchi", "Tsuyoshi Koshiro", "Shigenori Otsuka", "Seiya Nishizawa", "T Sakakima", "Edmund Highcock"]
  s.email = ["eriko@gfd-dennou.org"]
  s.homepage = "http://www.gfd-dennou.org/arch/ruby/products/ruby-netcdf/"
  s.licenses = ["GFD Dennou Club"]

  s.extensions = ["extconf.rb"]
  #s.files = %w( ChangeLog INSTALL LICENSE.txt README.md Rakefile ToDo extconf.rb lib/netcdf.rb lib/netcdf_miss.rb netcdfraw.c )
  s.files = Dir[ '**', 'lib/**/*', 'demo/**/*', 'doc/**/*', 'test/**/*' ].uniq
  s.platform = Gem::Platform::RUBY

  s.required_ruby_version = Gem::Requirement.new(">= 1.6")
  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  #s.rubygems_version = "1.8.23"

  s.has_rdoc = true

  s.require_paths = ["lib"]

  if s.respond_to? :specification_version
    s.specification_version = 3
  end

  runtime_dependencies = [
    [ "narray", [">= 0"] ],
    [ "narray_miss", [">= 0"]  ]
  ]

  if s.respond_to? :add_runtime_dependency
    runtime_dependencies.each { |d| s.add_runtime_dependency(*d) }
  else
    runtime_dependencies.each { |d| s.add_dependency(*d) }
  end
end
