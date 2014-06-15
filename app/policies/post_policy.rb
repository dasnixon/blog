class PostPolicy < ApplicationPolicy
  def create
    user.id == 1
  end
  %i(update destroy).each { |action| alias_method(action, :create) }
end
