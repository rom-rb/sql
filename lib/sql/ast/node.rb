# encoding: utf-8

module SQL
  module AST

    # An SQL abstract syntax tree node
    class Node < ::AST::Node

      # The AST node in SQL form
      #
      # @example
      #   node.to_sql  # => 'SELECT * FROM users'
      #
      # @return [String]
      #
      # @api public
      def to_sql
        ''  # TODO: tell the Generator to construct the SQL
      end

    end # class Node
  end # module AST
end # module SQL
