class TicketPolicy < ApplicationPolicy
  def show?
    true
  end

  def create?
    true
  end

  def update?
    true
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
