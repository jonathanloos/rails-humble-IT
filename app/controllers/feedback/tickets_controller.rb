require_dependency "feedback/application_controller"

module Feedback
  class TicketsController < ApplicationController
    before_action :set_ticket, only: [:show, :edit, :update, :destroy]

    # GET /tickets
    def index
      @tickets = Ticket.all
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
        params.require(:ticket).permit(:name, :email, :text, :response, :status, :version, :notify, :category, :priority, :reported_version, :closed_at, :title, :confidence, :impact, :ease, :ice_score, :user_id, :owner_id)
      end
  end
end
