require 'rails_helper'

RSpec.describe Client, :type => :model do
	let(:taxyear_2014) {Taxyear.new(year: 2014)}
	let(:taxyear_2013) {Taxyear.new(year: 2013)}

	let(:client) {Client.new(name: 'Justin', address: '123 Street', age: 29)}

	it "has a name" do
		client.name.should == 'Justin'
	end

	it 'has an address' do
		client.address.should == '123 Street'
	end

	it 'has an age' do
		client.age.should == 29
	end

	it 'must have a name' do
		c = Client.new
		expect { c.save! }.to raise_error(
				ActiveRecord::RecordInvalid
			)
	end

	it 'name must be greater than 5' do
		c = Client.new(name: '1234')
		expect { c.save! }.to raise_error(
				ActiveRecord::RecordInvalid
			)
	end

	it 'has A taxyear' do
		c = Client.new(name: 'Justin', address: '123 Street', age: 29, taxyear: [taxyear_2013, taxyear_2014])
		c.taxyear.first.should == taxyear_2013
	end

end
