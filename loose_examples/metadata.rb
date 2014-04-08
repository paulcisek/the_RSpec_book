describe "something", :a => "A"  do
  it "does something", :b => "B" do
    puts example.metadata[:a]
    puts example.metadata[:b]
  end
end