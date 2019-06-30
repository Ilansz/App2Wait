class GroupPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all.order(average_lateness: :desc)
    end
  end

  def show?
    true
  end

  def create?
    true
  end

  def update?
    record.user == user
  end

  def destroy?
    record.user == user
  end
end
