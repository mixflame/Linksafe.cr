require "./spec_helper"

describe Linksafe do
  # TODO: Write tests

  it "works" do
    Linksafe.kosher?("http://www.porn.com").should eq(false)
    Linksafe.kosher?("http://www.google.com").should eq(true)
    Linksafe.kosher?("www.porn.com").should eq(false)
    Linksafe.kosher?("www.google.com").should eq(true)
  end

  it "can detect links in messages and return if kosher" do
    Linksafe.kosher_string!("This is a link to www.google.com").should eq("This is a link to www.google.com")
    Linksafe.kosher_string!("This is a link to www.google.com and www.porn.com").should eq("This is a link to www.google.com and [link removed]")
    Linksafe.kosher_string!("This is a link to https://youtube.com and www.kink.com and www.google.com").should eq("This is a link to https://youtube.com and [link removed] and www.google.com")
  end
end
