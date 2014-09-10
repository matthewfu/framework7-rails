#!/usr/bin/env ruby
VERSION_FRAMEWORK7 = "0.9.5"

puts "Updating Framework Version #{VERSION_FRAMEWORK7}"
puts "Downloading v#{VERSION_FRAMEWORK7} release framework7 github repo into tmp_vendor"
puts "\n\n\n"

system("wget https://github.com/nolimits4web/Framework7/archive/v#{VERSION_FRAMEWORK7}.tar.gz")
system("tar -zxf v#{VERSION_FRAMEWORK7}.tar.gz")
system("rm v#{VERSION_FRAMEWORK7}.tar.gz")

puts "Copying js files"

system("cp Framework7-#{VERSION_FRAMEWORK7}/dist/js/framework7.js vendor/assets/javascripts/")


puts "Copying css files"
system("cp Framework7-#{VERSION_FRAMEWORK7}/dist/css/framework7.css vendor/assets/stylesheets/")
system("cp Framework7-#{VERSION_FRAMEWORK7}/dist/css/framework7.themes.css vendor/assets/stylesheets/")

puts "Copying images"

system("cp Framework7-#{VERSION_FRAMEWORK7}/dist/img/* vendor/assets/images/")

puts "Removing cloned vendor repository"

system("rm -rf Framework7-#{VERSION_FRAMEWORK7}")

puts "Finished.."
puts "You'll need to commit the changes. You should consider updating the change log and gem version number"
puts "next run install_local.sh"