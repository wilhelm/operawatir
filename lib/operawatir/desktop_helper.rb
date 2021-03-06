# -*- coding: utf-8 -*-

# TODO
#   You need to set the OPERA_LAUNCHER and OPERA_PATH environment variables
#   for this Helper to work.

require 'operawatir'
require 'rspec'
require 'rbconfig'

module OperaWatir::DesktopHelper
  extend self
  
  def settings
    OperaWatir::DesktopBrowser.settings
  end
  
  def browser
    @browser ||= OperaWatir::DesktopBrowser.new
  end
  
  def configure_rspec!
    RSpec.configure do |config|
      
      # Set every RSpec option
      settings.each do |key, value|
        config.send("#{key}=", value) if config.respond_to?("#{key}=")
        if key.to_s.eql?("files_to_run")
          @@files = value
        end
      end
            
      config.include SpecHelpers
      
      config.before(:all) {
        if OperaWatir::DesktopHelper::settings[:no_restart] == false
          unless @@files.empty?
            path = File.join(Dir.getwd, @@files.shift)
            filepath = path.chomp(".rb")
            browser.reset_prefs(filepath)
          end
        else
          # Must create browser object here so that none of the
          # test is run before Opera has been launched
          browser
        end
      }

      config.after(:suite) { 
        # Use the @browser directly because we don't want
        # to launch Opera here if it's not running
        if @browser

          if settings[:no_quit] == false
            # Shutdown Opera
            @browser.quit_opera
            @browser.delete_profile
          end

          # Shutdown the driver
          @browser.quit_driver
        end
      }
    end
  end

  def run!(settings={})
    OperaWatir::DesktopBrowser.settings = settings
    configure_rspec!
    RSpec::Core::Runner.autorun
  end
  
private

  module SpecHelpers
    def browser
      OperaWatir::DesktopHelper.browser
    end

    def window
      browser.active_window
    end
  end
end
