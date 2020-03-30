class FeedbackPolicy < WingPolicy
  def show?
    true
  end

  def create?
    true
  end

  def update?
    @user.super_admin?
  end

  def destroy?
    @user.super_admin?
  end

  def thanks?
    create?
  end

  def assign?
    @user.super_admin?
  end

  def stats?
    true
  end
end
