require File.expand_path("../watirspec_helper", __FILE__)

OperaWatir.compatibility!

module LegacyWatirSpecHelpers
  def browser
    super.active_window
  end
end

RSpec.configure do |config|
  config.include LegacyWatirSpecHelpers
end
