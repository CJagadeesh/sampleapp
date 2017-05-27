require "csv"
class Transaction < ApplicationRecord
	belongs_to :user
  
  def self.to_csv(user_id)
    CSV.generate do |csv|
      csv << ['amount', 'description', 'type']
      where(user_id: user_id).each do |transaction|
        csv << [transaction.amount, transaction.description, transaction.type]
      end
    end
  end
end
