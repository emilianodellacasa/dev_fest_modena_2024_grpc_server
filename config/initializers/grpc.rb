# frozen_string_literal: true

require 'grpc'
require_relative '../../app/services/command_service'

# Start the gRPC server
def start_grpc_server
  port = '0.0.0.0:50051'
  s = GRPC::RpcServer.new
  s.handle(CommandService)
  s.add_http2_port(port, :this_port_is_insecure)
  s.run_till_terminated_or_interrupted([1, 'int', 'SIGQUIT']) unless Rails.env.test?
end

Thread.new { start_grpc_server }

