class CatSerializer < ActiveModel::Serializer
  attributes :name, :picture_url

  def picture_url
    object.picture.url
  end
end
