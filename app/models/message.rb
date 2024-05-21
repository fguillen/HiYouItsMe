class Message < ApplicationRecord
  after_create_commit { broadcast_append_to "messages" }

  scope :by_recent, -> { order(created_at: :desc) }
end
