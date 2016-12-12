class BlogPostsController < ApplicationController

  def new
  end

  def create
    # we render, in plain text, the params entered to us from the new.html.erb form_for
    # where we asked have a new blog_post object created on the input of information, the
    # method then outputs to us via the index action, in simple formatted text
    # notice the explicit use of the singular ':blog_post', not plural, indicating we are creating
    # A blog_post, not "blog_posts" as a collection
    render plain: params[:blog_post].inspect
  end

end
