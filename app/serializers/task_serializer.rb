class TaskSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :iscomplete
  has_one :project
  has_one :user
end
