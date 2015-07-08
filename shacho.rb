# coding: utf-8
require_relative 'shain'
require_relative 'tanto'
require_relative 'shunin'
require_relative 'bucho'

shain = Tanto.new
shain.standup
puts "私の給料は#{shain.calclate_salary(100)}円です。"

shain2 = Shunin.new
shain2.standup
puts "私の給料は#{shain2.calclate_salary(100)}円です。"

shain3 = Bucho.new
shain3.standup
puts "私の給料は#{shain3.calclate_salary(100)}円です。"
