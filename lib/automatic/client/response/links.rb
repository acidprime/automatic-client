module Automatic
  module Client
    module Response
      class Links
        include Enumerable

        def initialize(collection)
          @collection = Array(collection)
        end

        def each(&block)
          links_collection.each(&block)
        end

        private
        def links_collection
          @collection.map { |record| Link.new(record) }
        end
      end
    end
  end
end
