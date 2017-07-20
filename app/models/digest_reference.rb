class DigestReference < ApplicationRecord
  belongs_to :user

  def self.find_recipients
    result = ActiveRecord::Base.connection.execute("select distinct user_id from digest_references")
    users = []
    result.each do |row|
      users << User.find(row[0].to_i)
    end
    users
  end
end
