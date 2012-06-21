Then /^I attach the file "(.*?)" to "(.*?)"$/ do |path, field|
  attach_file(field, path)
end

#Then /^I attach the file "([^\"]*)" to "([^\"]*)"$/ do |path, field|
#  attach_file(field, path)
#end

And /^I should see the image "(.*?)"$/ do |foto|
  page.should have_xpath("//img[@src=\"/images/assets/fotos/1/thumb/#{foto}\"]")
end