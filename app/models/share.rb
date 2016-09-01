# type Share {
#   variant Variant
#   uuid string
#   parent_uuid string
#   referrer_id string
# }
# we should validate that `parent_uuid != uuid`
# to avoid circular relationships
class Share < ApplicationRecord
  belongs_to :variant
  delegate :resource_uri, to: :variant
end
