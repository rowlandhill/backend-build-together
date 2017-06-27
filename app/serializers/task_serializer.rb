class TaskSerializer < ActiveModel::Serializer
  attributes :id, :name, :description
  has_one :project
  has_one :user
end
