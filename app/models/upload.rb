class Upload < ApplicationRecord
  mount_uploader :file, FileUploader

  validates :title, presence: true
  validates :file, presence: true

  before_validation :set_title

  def set_title
    self.title = file.send(:original_filename) if file
  end
end
