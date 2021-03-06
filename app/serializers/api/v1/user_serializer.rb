# Users serializer
class Api::V1::UserSerializer < ActiveModel::Serializer
  attributes  :id,
              :name,
              :token

  def name
    "#{object.first_name} #{object.last_name}"
  end
end
