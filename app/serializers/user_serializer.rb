class UserSerializer
  include JSONAPI::Serializer
  set_id :id
  set_type 'user'
  attributes :first_name, :last_name, :username, :email
  attribute :animals do |object|
    object.animals
  end
end
