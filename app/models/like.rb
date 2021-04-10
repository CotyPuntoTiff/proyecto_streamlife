class Like < ApplicationRecord
  belongs_to :user
  belongs_to :post

    def like_count(post)
        # cuenta la cantidad de likes de un comentario
        l = post.like.count
        return l 
    end

    def top_post_like(posts)
        # ordenar de mayor a menor dependiendo de la cantidad de likes |TERMINAR|
        t = posts.map{|i| like.count(i)}
        return t
    end
end
