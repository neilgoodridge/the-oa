class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :actions
  has_many :tasks, through: :actions
  has_many :causes, through: :tasks

  def outstanding_tasks
    Task.includes(:actions).references(:actions).where.not(actions: { user_id: self.id })
  end
end
