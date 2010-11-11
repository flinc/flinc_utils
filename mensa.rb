#!/usr/bin/env ruby
require 'rubygems'
require 'nokogiri'
require 'open-uri'

doc = Nokogiri::HTML(open('http://www.studentenwerkdarmstadt.de/essen/mensa-dieburg.html'))
doc.css('table.spk_table td').each do |cell|
  puts cell.content
end