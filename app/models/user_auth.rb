class UserAuth < ApplicationRecord
  belongs_to :user
  mount_uploader :id_card, S3Uploader
  mount_uploader :face_image, S3Uploader
end
