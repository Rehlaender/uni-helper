class PromotionsController < ApplicationController
  before_action :user_in_logged, only:[:new, :create ]
  before_action :admin_logged_in, only:[:index, :edit, :update, :destroy]

  def index
    @promotions = Promotion.all
  end

  def show
    @promotion = Promotion.find(params[:id])
  end

  def new
    @promotion = Promotion.new
    @post = Post.find(params[:post_param])
    @promotion.post_id = @post.id
  end

  def create
    @promotion = Promotion.new
    @post = Post.find(params[:post_params])
    @promotion.post_id = @post.id
    if @promotion.save
      #Pagina que asegura que la peticion fue exitosa
      redirect_to @promotion
    else
      redirect_to error_promotion_path
    end
  end

  def edit
    @promotion = Promotion.find(params[:id])
  end

  def update
    @promotion = Promotion.find(params[:id])
    @promotion.paid = true

    @post = Post.find(params[:post_paramz])
    @post.update(promoted: true)

    if @promotion.update(promotion_params)
      #Página que asegura que el registro del pago se proceso por completo
      redirect_to promotions_path
    else
      redirect_to edit_promotion_path
    end
  end

  def destroy
    @promotion = Promotion.find(params[:id])
    @promotion.destroy
    redirect_to promotions_path
  end

  def success
  end

  def error
  end

  def prom
  end

  private
    def promotion_params
      params.require(:promotion).permit(:post_id, :reference, :paid)
    end

end
