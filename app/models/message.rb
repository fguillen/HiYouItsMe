class Message < ApplicationRecord
  after_create_commit { broadcast_append_to "chat" }
end
