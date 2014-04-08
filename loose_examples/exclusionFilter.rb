RSpec.configure do |c|
  c.exclusion_filter = { :slow => true }
end

describe "group" do
  it "example1", :slow => true do

  end
  it "example2" do

  end
end