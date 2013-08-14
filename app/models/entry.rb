class Entry < ActiveRecord::Base
  extend FriendlyId
  friendly_id :slug_candidates, :use => :slugged

  def slug_candidates
    [
      [:title, :body.to_s[0..70]]
    ]
  end

  validates :title, presence: true
  validates :body, presence: true
end
