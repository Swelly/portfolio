# == Schema Information
#
# Table name: item_twitters
#
#  id         :integer          not null, primary key
#  twitter_id :string(255)      not null
#

class ItemTwitter < ActiveRecord::Base

  has_one :item, as: :target, dependent: :destroy
  validates :twitter_id, presence: true


  def set_attributes_and_save!(params)
    self.twitter_id = params['twitter_id']
    self.save!
  end
end