class User < ApplicationRecord
  has_many :events
  accepts_nested_attributes_for :events, allow_destroy: true

  def test_method
    'some string'
  end

  def as_json(_options={})
    super(only: %i[name created_at], methods: :test_method, include: { events: { methods: :test } })
  end
end
