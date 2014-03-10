class Operation < ActiveRecord::Base
  attr_accessible :dateandtime, :problem, :name_znebol_id, :name_operation_id, :surgeon_id
  belongs_to :woman
  belongs_to :name_operation, :class_name => 'Admin::NameOperation'
  belongs_to :name_znebol, :class_name => 'Admin::NameZnebol'
  belongs_to :surgeon, :class_name => 'Admin::Surgeon'
end
