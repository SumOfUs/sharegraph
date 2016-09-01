# type Variant {
#   uuid: UUID
#   share: Share
#   image_url: string
#   description: string
# }
class Variant < ApplicationRecord
  belongs_to :share_resource

  delegate :resource_uri, to: :share_resource
end
