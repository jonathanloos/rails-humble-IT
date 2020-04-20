require_dependency "feedback/application_controller"

module Feedback
  class TicketsController < ApplicationController
    before_action :set_ticket, only: [:show, :edit, :update, :destroy]
    before_action :set_user, only: [:create, :update, :edit]
    # GET /tickets
    def index
      @tickets = Ticket.all

      # status, defualt to not closed
      if params[:status].present?
        @tickets = @tickets.where(status: params[:status])
      end

      # priority, defualt to not closed
      if params[:priority].present?
        @tickets = @tickets.where(priority: params[:priority])
      end

      # category default to any
      if params[:category].present?
        @tickets = @tickets.where(category: params[:category])
      end

      # assignee / owner, default to any
      if params[:assignee].present?
        @tickets = @tickets.where(owner_id: params[:assignee])
      end

      # requester, default to any
      if params[:requester].present?
        @tickets = @tickets.where(user_id: params[:requester])
        # else
        #   @feedback = @feedback.where(user_id: current_user.id)
      end

      if params[:q].present?
        @tickets = @tickets.search_all(params[:q])
      end

      if params[:order].present?
        @tickets = @tickets.order(params[:order] => :desc)
      end

      @pagy, @tickets = pagy @tickets
      skip_policy_scope
    end

    # GET /tickets/1
    def show
      skip_authorization
    end

    # GET /tickets/new
    def new
      @ticket = Ticket.new
      skip_authorization
    end

    # GET /tickets/1/edit
    def edit
      skip_authorization
    end

    # POST /tickets
    def create
      skip_authorization
      @ticket = Ticket.new(ticket_params)
      @ticket.user = current_user
      skip_policy_scope

      respond_to do |format|
        if @ticket.save
          format.html { redirect_to @ticket, notice: "Thanks for the feedback!" }
          # format.json { render :show, status: :created, ticket: @ticket }
        else
          format.html { render :new }
          # format.json { render json: @ticket.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /tickets/1
    def update
      skip_authorization
      if @ticket.update(ticket_params)
        redirect_to @ticket, notice: 'Ticket was successfully updated.'
      else
        render :edit
      end
    end

    # DELETE /tickets/1
    def destroy
      skip_authorization
      @ticket.destroy
      redirect_to tickets_url, notice: 'Ticket was successfully destroyed.'
    end

    private

    # Use callbacks to share common setup or constraints between actions.
    def set_ticket
      @ticket = Ticket.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def ticket_params
      params.require(:ticket).permit(:name, :email, :text, :response, :status, :version, :notify, :category, :priority, :reported_version, :closed_at, :title, :confidence, :impact, :ease, :ice_score, :user_id, :owner_id, attachments: [])
    end

    def set_user
      @user = current_user
    end
  end
end
