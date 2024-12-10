require "bundler/gem_tasks"
require "rake/testtask"
require "ruby-core/extensiontask"

helper = Bundler::GemHelper.instance
extask = RubyCore::ExtensionTask.new(helper.gemspec)
task :test => :compile

Rake::TestTask.new(:test) do |t|
  t.libs.unshift(*extask.libs)
  t.libs << "test/lib"
  t.ruby_opts << "-rhelper"
  t.test_files = FileList["test/**/test_*.rb"]
end

task :default => :test
