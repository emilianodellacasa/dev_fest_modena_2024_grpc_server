# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: commands.proto

require 'google/protobuf'


descriptor_data = "\n\x0e\x63ommands.proto\x12\x08\x63ommands\"\x1c\n\x06\x44\x65vice\x12\x12\n\nidentifier\x18\x01 \x01(\t\"&\n\x07\x43ommand\x12\n\n\x02id\x18\x01 \x01(\x05\x12\x0f\n\x07request\x18\x02 \x01(\t2E\n\x0e\x43ommandService\x12\x33\n\nGetCommand\x12\x10.commands.Device\x1a\x11.commands.Command\"\x00\x62\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool
pool.add_serialized_file(descriptor_data)

module Commands
  Device = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("commands.Device").msgclass
  Command = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("commands.Command").msgclass
end
