class Admission < ApplicationRecord
  has_attached_file :media_1
  has_attached_file :media_2
  has_attached_file :media_3

  validates_attachment :media_1, :media_2, :media_3, content_type:
      { content_type: ["image/jpeg", "image/png", "application/pdf"] }
end