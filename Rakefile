require 'bundler'
require 'rake/testtask'

Bundler::GemHelper.install_tasks

task :default => :test

Rake::TestTask.new :test do |t|
  t.pattern = 'test/*_test.rb'
  t.warning = true
  t.libs << 'test'
end
