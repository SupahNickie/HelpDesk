class Post < ActiveRecord::Base

  def self.create_from_postmark(mitt)
    post = Post.new
    post.message_id = mitt.message_id
    post.title      = mitt.subject
    post.body = if mitt.text_body.blank?
      mitt.html_body
    else
      mitt.text_body
    end
    post.save
  end

end
