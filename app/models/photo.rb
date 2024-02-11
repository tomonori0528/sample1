class Photo < ApplicationRecord

    mount_uploader :image, ImageUploader

    

    has_many :narratives, dependent: :destroy

end
