class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :title, :body
  has_one :user
  has_many :tasks
end
