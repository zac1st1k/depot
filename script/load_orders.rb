Order.transaction do
  (1..100).each do |i|
    Order.create(:name => "Customer #{i}", :address => "#{i} street",
     :email => "#{i}@test.com", :pay_type => "Check")
  end
end