class Article < ActiveRecord::Base
    # mount_uploader :img1, S3uploaderUploader
    has_many :atc_replies
end
