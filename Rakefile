#!/usr/bin/env rake

# -- bundler --------------------------
begin
  require 'bundler/setup'
rescue LoadError
  puts 'You must `gem install bundler` and `bundle install` to run rake tasks'
end

# -- rdoc -----------------------------
begin
  require 'rdoc/task'
rescue LoadError
  require 'rdoc/rdoc'
  require 'rake/rdoctask'
  RDoc::Task = Rake::RDocTask
end

RDoc::Task.new(:rdoc) do |rdoc|
  rdoc.rdoc_dir = 'rdoc'
  rdoc.title    = 'ruby-netcdf'
  rdoc.options << '--line-numbers' << '--inline-source' << '--charset=UTF-8'
  rdoc.rdoc_files.include('README.rdoc')
  rdoc.rdoc_files.include('lib/**/*.rb')
  rdoc.rdoc_files.include('netcdfraw.c')
end

# -- gem packaging --------------------
require 'bundler/gem_helper'
Bundler::GemHelper.install_tasks

# -- others ---------------------------

task :clean do
	system "rm -rf Makefile *.o *.so mkmf.log test/test.nc *.gem"
end
