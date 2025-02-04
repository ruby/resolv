require "test/unit"
require "core_assertions"

if RUBY_PLATFORM =~ /mswin|mingw/
  # "win32/resolv" is installation path by Ruby installer.
  # We should load that file manually for testing with Windows platform.
  require_relative "../../ext/win32/resolv/lib/resolv"
end

Test::Unit::TestCase.include Test::Unit::CoreAssertions
