class Product < ActiveRecord::Base
	has_attached_file :photo,
    :styles => {
      :thumb=> "150x150#",
      :small  => "300x300#" }
end
