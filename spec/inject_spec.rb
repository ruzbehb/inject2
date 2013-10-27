require 'inject'

describe 'inject' do 

	let(:inject) {Inject.new}

	it 'sums up all the numbers when required' do
		expect([1,2,3,4,5].inject2 {|memo, num| memo + num}).to eq 15
	end

	it 'multiplies all the numbers when required' do
		expect([1,2,3].inject2 {|memo, num| memo + num}).to eq 6
	end	
	
	it 'correctly checks for the length of strings in an array' do
		expect(['Enrique','Rob','Evgeny'].inject3 {|word| word.length < 2}).to eq true
	end
end