if Rails.env.ci?
  Capybara.server_port = 4000
  Capybara.app_host = "http://ci1.amsterdam.viaviela.local:#{Capybara.server_port}"

  # TODO Create some kind of platform selection tool, also see
  # http://rdoc.info/gems/selenium-webdriver/2.2.0/Selenium/WebDriver/Remote/Capabilities
  Capybara.default_driver = :selenium
  Capybara.register_driver :selenium do |app|
    Capybara::Selenium::Driver.new(app,
      :browser => :remote,
      :url => "http://ci2.amsterdam.viaviela.local:4444/wd/hub",
      :desired_capabilities => :firefox
    )
  end
end
