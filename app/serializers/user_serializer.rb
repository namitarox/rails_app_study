class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :introduction, :avatar
  def avatar
    return nil unless object.avatar.attached?

    Rails.application.routes.url_helpers.rails_blob_path(object.avatar, only_path: true)
  end
end
