class Task < ActiveRecord::Base
  validates :body, presence: true
  validates :title, presence: true

  def self.not_completed
    where(completed: false)
  end
end
