require 'rails_helper'

describe Micropost do
	let(:mp) { Micropost.new }

	it 'enforces validations' do
		expect(mp.save).to eq(false)
		expect(mp.errors.messages[:user].first).to eq 'must exist'
		expect(mp.errors.messages[:content].first).to eq "can't be blank"
		expect(mp.errors.messages[:user_id].first).to eq "can't be blank"
	end
end
