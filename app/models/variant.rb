# type Variant {
#   uuid: UUID
#   share: Share
#   image_url: string
#   description: string
# }
class Variant < ApplicationRecord
  belongs_to :share
end
