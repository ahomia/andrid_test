Before do
  $driver.start_driver
end

After do |scenario|
  if scenario.failed?
    if !File.directory?("screen_shots")
      FileUtils.mkdir_p("screen_shots")
    end
    time_stamp = Time.now.strftime("%Y-%m-%d_%H.%M.%S")
    screeshot_name = time_stamp + ".png"
    screenshot_file = File.join("screen_shots", screeshot_name)
    $driver.screenshot(screenshot_file)
    embed("#{screenshot_file}", "image/phg")
  end
  $driver.driver_quit
end

AfterConfiguration do
  FileUtils.rm_r("screen_shots") if File.directory?("screen_shots")
end