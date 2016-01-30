class PromotionsController < ApplicationController
  before_action :user_is_logged, only:[:new, :create ]
  before_action :admin_logged_in, onle:[:index, :edit, :update, :destroy]

  def index
    @promotions = Promotion.all
  end

  def show
    @promotion = Promotion.fin(params[:id])
  end

  def new
    @promotion = Promotion.new
  end

  def create(post_id)
    @promotion = Promotion.new
    @promotion.post_id = post_id
    if @promotion.save
      #Pagina que asegura que la peticion fue exitosa
      redirect_to success_promotion_path
    else
      redirect_to error_promotion_path
    end
  end

  def edit
    @promotion = Promotion.find(params[:id])
  end

  def update
    @promotion = Promotion.find(params[:id])
    if @promotion.update
      #Página que asegura que el registro del pago se proceso por completo
      redirect_to prom_promotion_path
    else
      redirect_to error_promotion_path
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


end
