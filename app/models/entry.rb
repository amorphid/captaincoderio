class Entry < ActiveRecord::Base
  extend FriendlyId
  friendly_id :slug_candidates, :use => :slugged

  def slug_candidates
    [
      ["#{title}-#{body}"[0,256]]
    ]
  end

  validates :title, presence: true
  validates :body, presence: true
end
