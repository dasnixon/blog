# == Schema Information
#
# Table name: posts
#
#  id           :integer          not null, primary key
#  title        :string(255)      not null
#  body         :text             not null
#  times_viewed :integer          default(0)
#  created_at   :datetime
#  updated_at   :datetime
#

class Post < ActiveRecord::Base
  validates :title, :body, presence: true
  validates :times_viewed, numericality: { only_integer: true }

  def viewed!
    self.update(times_viewed: self.times_viewed += 1)
  end
end
