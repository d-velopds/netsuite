module NetSuite
  module Records
    class ExpenseCategory
      include Support::Fields
      include Support::Actions
      include Namespaces::ListAcct

      actions :get, :get_list, :search

      fields :default_rate, :description, :name

      attr_reader :internal_id
      attr_accessor :external_id, :search_joins

      def initialize(attributes = {})
        @internal_id = attributes.delete(:internal_id) || attributes.delete(:@internal_id)
        @external_id = attributes.delete(:external_id) || attributes.delete(:@external_id)
        initialize_from_attributes_hash(attributes)
      end

      def self.search_class_name
        "ExpenseCategory"
      end
    end
  end
end
