require_relative './operation'

module Dentaku
  module AST
    class Multiplication < Operation
      def value(context={})
        left.value(context) * right.value(context)
      end

      def self.precedence
        20
      end
    end
  end
end
