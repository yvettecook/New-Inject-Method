require 'new_inject'

describe 'new_inject' do 

	it "should work on addition" do
 		expect([1,2,3,4].new_inject(0){ |result, element| result + element } ).to eq(10) 
	end

	it "should work on subtraction" do
 		expect([1,2,3,4].new_inject(0){ |result, element| result - element } ).to eq(-10) 
	end

	it "should work without a starting argument" do
		expect([1,2,3,4].new_inject{ |result, element| result + element } ).to eq(10) 
	end

	it "should work with a starting argument of 1" do
		expect([1,2,3,4].new_inject(1) { |result, element| result + element } ).to eq(11) 
	end


	
end


# p [1,2,3,4].inject(:+)
# p [1,2,3,4].inject(5, :+)