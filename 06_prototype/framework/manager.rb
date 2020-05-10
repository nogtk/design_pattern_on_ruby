module Prototype
  module Framework
    class Manager
      attr_writer :show_case

      def initialize
        @show_case = {}
      end

      def register(name, proto)
        @show_case[name] = proto
      end

      def create(proto_name)
        @show_case[proto_name].create_clone
      end
    end
  end
end
