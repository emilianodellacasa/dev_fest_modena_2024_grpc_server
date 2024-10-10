# frozen_string_literal: true

require 'commands_services_pb'

class CommandService < Commands::CommandService::Service
  def get_command(request, _call)
    command = get_command_for(request.identifier)

    Commands::Command.new(id: command[:id], request: command[:request])
  end

  private

  def get_command_for(device_identifier)
    id = 0
    request = 'NONE'

    device = Device.find_by(identifier: device_identifier)
    if device.present? && device.pending_commands.present?
      command = device.pending_commands.last
      id = command.id
      request = command.request.downcase
    end

    {id:, request:}
  end
end
