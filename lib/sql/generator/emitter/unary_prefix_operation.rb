# encoding: utf-8

module SQL
  module Generator
    class Emitter

      # Emitter class for unary operations using prefix notation
      class UnaryPrefixOperation < self

        TYPES = IceNine.deep_freeze(
          uplus:  O_PLUS,
          uminus: O_MINUS,
          not:    O_NEGATION + WS,
          on:     O_ON + WS,
          using:  O_USING + WS
        )

        handle(*TYPES.keys)

        children :value

      private

        # Perform dispatch
        #
        # @return [undefined]
        #
        # @api private
        def dispatch
          write(TYPES.fetch(node_type))
          visit(value)
        end

      end # UnaryPrefixOperation
    end # Emitter
  end # Generator
end # SQL
