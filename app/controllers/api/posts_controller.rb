class Api::PostsController < Api::ApiController
  before_filter :find_post, only: [:show, :update, :destroy]

  def show
    render json: @post
  end

  def index
    render json: Post.all
  end

  def create
    render json: Post.create(post_params)
  end

  def update
    render json: @post.update(post_params)
  end

  def destroy
    render json: @post.destroy
  end

  private

  def find_post
    @post = Post.find(params[:id])
    authorize @post
  end

  def post_params
    params.require(:post).permit(:title, :body)
  end
end
