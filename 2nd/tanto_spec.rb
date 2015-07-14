# -*- coding: utf-8 -*-
require 'rspec'
require_relative 'shain'
require_relative 'tanto'

describe Tanto do
  let(:tanto) { Tanto.new }
  it '担当は給料は基本給と一緒。基本給が100なら給料も100' do
    expect(tanto.calclate_salary(100)).to eq 100
  end
end

