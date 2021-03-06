require File.expand_path('../tag.rb', __FILE__)

module Automatic
  module Models
    class Tags
      include Enumerable

      # Return a collection of Automatic Tag models
      #
      # @param collection [Array] JSON Automatic Tag Models
      #
      # @return [Automatic::Models::Tags]
      def initialize(collection)
        @collection = Array(collection)
      end

      # Imeplement Enumerable
      def each(&block)
        internal_collection.each(&block)
      end

      # Find a tag by a given name
      #
      # @note We want to return an array proxy here
      #
      # @return [Array]
      def find_by_tag(name)
        self.select { |record| record.name == name.to_s }.first
      end

      private
      def internal_collection
        @collection.map { |record| Tag.new(record) }
      end
    end
  end
end
