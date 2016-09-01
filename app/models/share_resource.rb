# type ShareResource {
#   url: string
#   variants: Variant[]
# }
class ShareResource < ApplicationRecord
  has_many :variants
end
