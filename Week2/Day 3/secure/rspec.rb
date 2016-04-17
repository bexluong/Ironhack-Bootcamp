require "rspec"
require "./securepw.rb"

RSpec.describe "check_password" do

  before :each do
    @pw = PasswordChecker.new
  end

  it "should return false if < 7 characters" do
    expect(@pw.check_password("rafa@email.com", "butter")).to eq(false)
  end

  it "should return true if > 7 characters" do
    expect(@pw.check_password("rafa@email.com", "butt3rTrrr?")).to eq(true)
  end

  it "should return false if doesn't include at least one number, one character and one letter" do
    expect(@pw.check_password("rafa@email.com", "butter")).to eq(false)
  end

  it "should not contain username or the domain" do
    expect(@pw.check_password("rafa@email.com", "rafaemail99T?")).to eq(false)
  end
  #
  # it "should return true if includes at least one number, one character and one letter" do
  #   expect(@pw.check_password("rafa@email.com", "BuTT3r??")).to eq(true)
  # end
  #
  # it "should return false if < 7 characters" do
  #   expect(@pw.check_password("rafa@email.com", "butter")).to eq(false)
  #end

end
