# type ShareResource {
#   resource_id: string
#   resource_uri: string
#   variants: Variant[]
# }
class ShareResource < ApplicationRecord
  has_many :variants
end
