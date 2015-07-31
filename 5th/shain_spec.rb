# -*- coding: utf-8 -*-
require_relative './shain'

describe ShainFactory do
  let(:shain_factory) {ShainFactory.new}

  it 'Tantoオブジェクトを生成しているかどうかチェックする' do
    expect(shain_factory.create('Tanto', 100)).to be_an_instance_of Tanto
  end

  it 'Shuninオブジェクトを生成しているかどうかチェックする' do
    expect(shain_factory.create('Shunin', 200)).to be_an_instance_of Shunin
  end

  it 'Buchoオブジェクトを生成しているかどうかチェックする' do
    expect(shain_factory.create('Bucho', 200)).to be_an_instance_of Bucho
  end

  it 'Torishimariオブジェクトを生成しているかどうかチェックする' do
    expect(shain_factory.create('Torishimari', 200)).to be_an_instance_of Torishimari
  end
end
