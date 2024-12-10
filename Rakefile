require "bundler/gem_tasks"
require "rake/testtask"

if RUBY_ENGINE == "ruby"
  require "ruby-core/extensiontask"
  helper = Bundler::GemHelper.instance
  extask = RubyCore::ExtensionTask.new(helper.gemspec)
  task :test => :compile
end

Rake::TestTask.new(:test) do |t|
  t.libs.unshift(*extask.libs) if extask
  t.libs << "test/lib"
  t.ruby_opts << "-rhelper"
  t.test_files = FileList["test/**/test_*.rb"]
end

task :default => :test
