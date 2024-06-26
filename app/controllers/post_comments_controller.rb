class PostCommentsController < ApplicationController
  before_action :set_post_comment, only: %i[ show edit update destroy ]

  # GET /post_comments or /post_comments.json
  def index
    @commentable = find_commentable
    @post_comments = @commentable.post_comments
   
  end

  # GET /post_comments/1 or /post_comments/1.json
  def show
  end

  # GET /post_comments/new
  def new
    @post_comment = PostComment.new
  end

  # GET /post_comments/1/edit
  def edit
  end

  # POST /post_comments or /post_comments.json
  def create
    @commentable = find_commentable
    @post_comments = @commentable.post_comments.build(params[:comment])
    if @comment.save
      flash[:notice] = "Successfully created comment."
      redirect_to :id => nil
    else
      render :action => 'new'
    end
  end

  # PATCH/PUT /post_comments/1 or /post_comments/1.json
  def update
    respond_to do |format|
      if @post_comment.update(post_comment_params)
        format.html { redirect_to post_comment_url(@post_comment), notice: "Post comment was successfully updated." }
        format.json { render :show, status: :ok, location: @post_comment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @post_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /post_comments/1 or /post_comments/1.json
  def destroy
    @post_comment.destroy!

    respond_to do |format|
      format.html { redirect_to post_comments_url, notice: "Post comment was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post_comment
      @post_comment = PostComment.find(params[:id])
    end

    def find_commentable
      params.each do |name, value|
        if name =~ /(.+)_id$/
          return $1.classify.constantize.find(value)
        end
      end
      nil
    end
    # Only allow a list of trusted parameters through.
    def post_comment_params
      params.require(:post_comment).permit(:content, :commentable_id, :integer, :commentable_type)
    end
end
