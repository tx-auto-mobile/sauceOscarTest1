def run_tests(deviceName, platformName, platformVersion, app, junit)
  system("deviceName=\"#{deviceName}\" platformName=\"#{platformName}\" platformVersion=\"#{platformVersion}\" app=\"#{app}\" JUNIT_DIR=\"#{junit}\" cucumber -t @saucelabs")
end

task :iPhone_6_Simulator92 do
  run_tests('iPhone 6', 'iOS', '9.2', 'https://dl.dropboxusercontent.com/s/rkej5zglpo3ijxo/Edhita.zip', 'junit_reports/iPhone_6_Simulator')
end

task :iPhone_6_Simulator93 do
  run_tests('iPhone 6', 'iOS', '9.3', 'https://dl.dropboxusercontent.com/s/rkej5zglpo3ijxo/Edhita.zip', 'junit_reports/iPhone_6_Simulator')
end

task :iPhone_6_Simulator91 do
  run_tests('iPhone 6', 'iOS', '9.1', 'https://dl.dropboxusercontent.com/s/rkej5zglpo3ijxo/Edhita.zip', 'junit_reports/iPhone_6_Simulator')
end

multitask :test_sauce => [
    :iPhone_6_Simulator91,
    :iPhone_6_Simulator92,
    :iPhone_6_Simulator93
] do
  puts 'Running automation'
end