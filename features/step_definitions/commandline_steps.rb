Given("no input") do
    @input = ""
end

Given("these lines of input:") do |str|
    @input = str
end

When("head is run") do
    @output = `echo "#{@input}" | ruby head.rb`
    raise("There was an issue loading head.rb") unless $?.exitstatus == 0
end

Then("only a newline is printed to standard output") do
     expect(@output).to eq "\n"
end

Then("the output lines should be:") do |str|
    expect(@output).to eq str
end
