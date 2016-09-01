# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


share_resource = ShareResource.create(
  resource_id: SecureRandom.uuid,
  resource_uri: 'https://actions.sumofus.org/a/pepsico-palm-oil'
)

share_resource.variants.create(
  image_url: 'http://placehold.it/300x300',
  description: 'description'
)

Share.create(
  variant: share_resource.variants.last,
  uuid: SecureRandom.uuid,
  referrer_id: '12345'
)
