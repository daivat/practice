class PsController < ApplicationController
  before_action :set_p, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @ps = P.all
    respond_with(@ps)
  end

  def show
    respond_with(@p)
  end

  def new
    @p = P.new
    respond_with(@p)
  end

  def edit
  end

  def create
    @p = P.new(p_params)
    @p.save
    respond_with(@p)
  end

  def update
    @p.update(p_params)
    respond_with(@p)
  end

  def destroy
    @p.destroy
    respond_with(@p)
  end

  private
    def set_p
      @p = P.find(params[:id])
    end

    def p_params
      params.require(:p).permit(:description)
    end
end
