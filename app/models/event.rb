class Event < ApplicationRecord
  belongs_to :user
  def test
    'event method'
  end
end
