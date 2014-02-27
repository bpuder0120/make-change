require 'spec_helper'
require_relative '../lib/change_machine'

describe '#make_change' do 

  it "makes change from a given amount of cents" do
    expect(make_change("3 cents")).to eq("3 pennies")
    expect(make_change("6 cents")).to eq("1 nickel, 1 penny")
    expect(make_change("14 cents")).to eq("1 dime, 4 pennies")
  end

  it "makes change for quantities up to 100 cents" do
    expect(make_change("100 cents")).to eq("4 quarters")
  end


  
  
end