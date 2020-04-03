module Feedback
  class TicketPolicy < ApplicationPolicy
    def show?
      true
    end

    def new?
      true
    end

    def create?
      true
    end

    def update?
      @user.superadmin?
    end

    def edit?
      update?
    end

    def destroy?
      true
    end

    def thanks?
      true
    end

    def assign?
      true
    end

    def stats?
      true
    end
  end
end
