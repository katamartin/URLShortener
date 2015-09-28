class Link < ActiveRecord::Base
  validates :short_url, :long_url, uniqueness: true, presence: true
  after_initialize :create_short_url

  def create_short_url
    self.short_url ||= self.long_url.hash.to_s(36)
  end
end
