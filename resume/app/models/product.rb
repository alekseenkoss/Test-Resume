class Product < ActiveRecord::Base
  has_attached_file  :img,
                     :styles => {:small => "250x250"}

  define_index  do
    indexes discrip, :sortable => true
    indexes :name, :sortable => true
  end
end
