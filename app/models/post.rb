class Post < ApplicationRecord
  mount_uploader :file, FileUploader
  belongs_to :user
  
  has_many :favorites, dependent: :destroy
  has_many :favoriteds, through: :favorites, source: :user
  
  validates :content, presence: true, length: { maximum: 255 }
  validates :title, presence: true, length: { maximum: 255 }
  validates :file, presence: true
  validates :subject_id, presence: true
 
 enum subject_id: {
    国語: 1,
    社会: 2,
    数学: 3,
    理科: 4,
    英語: 5,
    音楽: 6,
    保体: 7,
    技家: 8,
    美術: 9
  }



  def self.search(keyword)
     where(["title like? OR content like?", "%#{keyword}%", "%#{keyword}%"])
  end
  
  def self.subject_search(keyword)
     where(["subject_id::text like?", "%#{keyword}%"])
  end
end
