class TicketsController < ApplicationController
  before_action :set_ticket, only: [:show, :edit, :update, :destroy]

  def index
    @tickets = Ticket.all
  end

  def show
  end

  def new
    @ticket = Ticket.new
  end

  def edit
  end

  def create
    @ticket = Ticket.new(ticket_params)

    if @ticket.save
        redirect_to @ticket, notice: 'Билет был куплен.'
    else
        render :new
    end
  end

  def update
    if @ticket.update(ticket_params)
        redirect_to @ticket, notice: 'Билет был обнавлен.'
    else
        render :edit
    end
  end

  def destroy
    @ticket.destroy
    redirect_to trains_path
end

  private

    def set_train
      @ticket = Ticket.find(params[:id])
    end

    def train_params
      params.require(:train).permit(:number)
    end
end
