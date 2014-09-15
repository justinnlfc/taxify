require 'rails_helper'

RSpec.describe "clients/new.html.erb", :type => :view do

	it "creates a client" do
		visit new_client_path
	end
end
