class Message < ApplicationRecord
  after_create_commit { broadcast_append_to "messages", locals: { just_created: true } }

  scope :by_recent, -> { order(created_at: :desc) }
end
