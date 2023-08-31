class PostSerializer < ActiveModel::Serializer
  attributes :title, :content, :author_name, :short_content
  has_many :tags

  def author_name
    object.author.name
  end

  def short_content
    object.content.truncate(40, omission: '...')
  end
end