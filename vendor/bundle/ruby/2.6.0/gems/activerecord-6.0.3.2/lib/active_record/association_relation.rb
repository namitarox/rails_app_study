# frozen_string_literal: true

module ActiveRecord
  class AssociationRelation < Relation
    def initialize(klass, association, **)
      super(klass)
      @association = association
    end

    def proxy_association
      @association
    end

    def ==(other)
      other == records
    end

    def build(attributes = nil, &block)
      block = _deprecated_scope_block("new", &block)
      scoping { @association.build(attributes, &block) }
    end
    alias new build

    def create(attributes = nil, &block)
      block = _deprecated_scope_block("create", &block)
      scoping { @association.create(attributes, &block) }
    end

    def create!(attributes = nil, &block)
      block = _deprecated_scope_block("create!", &block)
      scoping { @association.create!(attributes, &block) }
    end

    private
      def exec_queries
        super do |record|
          @association.set_inverse_instance_from_queries(record)
          yield record if block_given?
        end
      end
  end
end
