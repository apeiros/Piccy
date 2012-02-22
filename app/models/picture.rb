class Picture < ActiveRecord::Base
  has_attached_file :file, :styles => { :medium => "300x300>", :thumb => "50x50>" }
end
