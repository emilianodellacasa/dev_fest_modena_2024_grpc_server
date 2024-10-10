class Device < ApplicationRecord
  has_many :commands

  def pending_commands
    commands.pending
  end
end
