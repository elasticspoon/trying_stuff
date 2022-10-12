class User < ApplicationRecord
  has_many :events
  accepts_nested_attributes_for :events, allow_destroy: true

  def self.from_omniauth(auth)
    where(auth.slice('provider', 'uid').to_hash).first || create_from_omniauth(auth)
  end

  def self.create_from_omniauth(auth)
    create! do |user|
      user.provider = auth['provider']
      user.uid = auth['uid']
      user.name = auth['info']['name']
    end
  end

  def test_method
    'some string'
  end

  def as_json(_options={})
    super(only: %i[name created_at], methods: :test_method, include: { events: { methods: :test } })
  end
end
