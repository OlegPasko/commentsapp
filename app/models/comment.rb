class Comment < ActiveRecord::Base
  validates_presence_of :name, :body
  has_ancestry
  default_scope order('created_at ASC')
end
