RSpec.configure do |c|
    c.filter = { :focus => true }
end

describe "group1", :focus => true do
    it "example1" do
    end
    it "example2" do
    end
end
describe "group2" do
    it "example3" do
    end
    it "example4" do
    end
end

