class AdminsController < ApplicationController
    before_action :admin_logged_in, only: [:index, :show, :new, :create, :update, :edit, :destroy]

    def index
      @admins = Admin.all
    end

    def show
      @admin = Admin.find(params[:id])
      @hoy = DateTime.now.to_s(:number)
      @posts = Post.all.order(created_at: :desc)
      @events = Event.all.order(created_at: :desc)
      @promotions = Promotion.all.order(created_at: :desc)

      respond_to do |format|
        format.html
        format.pdf do
          pdfEvent = EventPdf.new(@events)
          # pdfReport = ReportPdf.new(@posts)
          send_data pdfEvent.render, filename: 'report.pdf', type: 'application/pdf'
          #send_data pdfReport.render, filename: 'report.pdf', type: 'application/pdf'
        end
      end
    end

    def new
      @admin = Admin.new
    end

    def create
      @admin = Admin.new(admin_params)

      if @admin.save

       redirect_to @admin
      else
       render 'new'
      end
    end

    def edit
      @admin = Admin.find(params[:id])
    end

    def update
      @admin = Admin.find(params[:id])

      if @admin.update(admin_params)
        redirect_to @admin
      else
        render 'edit'
      end
    end

    def destroy
      @admin = Admin.find(params[:id])
      @admin.destroy

      redirect_to admins_path
    end

    private


    def admin_params
      params.require(:admin).permit(:name, :user, :email, :password, :password_confirmation)
    end


end
