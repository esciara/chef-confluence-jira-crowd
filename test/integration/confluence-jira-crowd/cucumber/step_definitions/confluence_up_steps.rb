# encoding: UTF-8
require 'faraday'
require 'socket'

Given(/^the url of Confluences home page$/) do
  # the following code is really awful and really need to find out how to change it.
  @local_ip = Socket.ip_address_list[2].ip_address
end

When(/^a web user browses to the url$/) do
  connection = Faraday.new(:url => "https://#{@local_ip}",
                           :ssl => { :verify => false }) do |faraday|
    faraday.adapter Faraday.default_adapter
  end
  @page_body = connection.get('/setup/setuplicense.action').body
end

Then(/^the page should have the title "(.*?)"$/) do |title|
  page_title = @page_body.match(/<title>(.*?)<\/title>/)[1]
  expect(page_title).to match(title)
end
