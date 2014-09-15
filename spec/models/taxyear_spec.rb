require 'rails_helper'

RSpec.describe Taxyear, :type => :model do
  let(:client) {Client.new(name: 'Justin', address: '123 Street', age: 29)}
  let(:taxyear) {Taxyear.new(year: 2014, client: client)}

  it 'has a year' do
  	taxyear.year.should == 2014
  end

  it 'has a client' do
  	taxyear.client.should == client
  end
  
end
