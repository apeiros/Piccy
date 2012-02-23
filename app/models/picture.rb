class Picture < ActiveRecord::Base
  has_attached_file :file, :styles => { :medium => "300x300>", :thumb => "50x50>" }

  before_save do |pic|
    pic.name = pic.file.original_filename if pic.name.blank?
  end
end
