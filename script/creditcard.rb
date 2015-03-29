credit_card = ActiveMerchant::Billing::CreditCard.new(
  :number => '4916456141096759',
  :month => '12',
  :year => '2017',
  :first_name => 'Tobias',
  :last_name => 'Luetke',
  :verification_value => '123'
)

puts "Is #{credit_card.number} valid? #{credit_card.valid?}"
puts "#{credit_card.errors}"