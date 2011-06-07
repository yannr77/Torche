require 'test_helper'

class SurferTest < ActiveSupport::TestCase

  test "Surfer validations" do
    surfer = Surfer.new
    assert surfer.invalid?, "Surfer should be invalid without an email..."    
  end

  test "Surfer's email should be well formated" do
    surfer = Surfer.new
  
    goods = ["yann@gmail.com", "yann@gmail.fr", "yann-r@gmail.fr"]
    bads = ["yann", "yann@gmail", "yann-r@.fr"]

    goods.each do |email|
      surfer.email = email
      surfer.save
      assert surfer.errors[:email].empty?, "email #{email} should be valid"
    end

    bads.each do |email|
      surfer.email = email
      surfer.save
      assert surfer.errors[:email].any?, "email #{email} should be invalid"
    end

  end
  
  test "Surfer's tel" do
    surfer = Surfer.new
     goods = ["01.23.45.67.89.", "06 66 71 53 51", "01-64-09-68-41"]
     bads = ["fezpkfezpfk", "à&é"'(§è!ç)', "123456789", "06,66,71,53,51"]
     
     goods.each do |tel|
       surfer.tel = tel
       surfer.save
       assert surfer.errors[:tel].empty?, "Tel #{tel} should be valid"
     end
       
     bads.each do |tel|
       surfer.tel = tel
       surfer.save
       assert surfer.errors[:tel].any?, "Tel #{tel} should be invalid"
     end
  end

end

