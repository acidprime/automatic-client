module Automatic
  module Models
    class Vehicle
      # Builds an object for the Vehicle
      #
      # @param attributes [Hash] Hash of the Vehicle Definition
      #
      # @return [Automatic::Models::Vehicle]
      def initialize(attributes={})
        @attributes = attributes
      end

      # Returns the ID of the Vehicle
      #
      # @return [String]
      def id
        @attributes.fetch('id', nil)
      end

      # Returns the URL of the Vehicle
      #
      # @return [String]
      def url
        @attributes.fetch('url', nil)
      end

      # Returns the VIN of the vehicle
      #
      # @note Only applicable with scope:vin
      #
      # @return [String]
      def vin
        @attributes.fetch('vin', nil)
      end

      # Returns the year of the Vehicle
      #
      # @return [String]
      def year
        @attributes.fetch('year', nil)
      end

      # Returns the make of the Vehicle
      #
      # @return [String]
      def make
        @attributes.fetch('make', nil)
      end

      # Returns the model of the Vehicle
      #
      # @return [String]
      def model
        @attributes.fetch('model', nil)
      end

      # Returns the sub model of the Vehicle
      #
      # @return [String]
      def submodel
        @attributes.fetch('submodel', nil)
      end
      alias :sub_model :submodel

      # Returns the color of the Vehicle
      #
      # This is specified by the user.
      #
      # @return [String]
      def color
        @attributes.fetch('color', nil)
      end

      # Returns the full name of the Vehicle
      #
      # This is built from the official vehicle details
      #
      # @return [String]
      def full_name
        [self.year, self.make, self.model, self.sub_model].join(' ')
      end

      # Returns the display name of the Vehicle
      #
      # This is specified by the user
      #
      # @return [String]
      def display_name
        @attributes.fetch('display_name', nil)
      end

      # Returns the fuel level percent of the vehicle
      #
      # @return [Float]
      def fuel_level_percent
        @attributes.fetch('fuel_level_percent', 0).to_f
      end

      # Returns the designated fuel grade for the vehicle
      #
      # @return [String]
      def fuel_grade
        @attributes.fetch('fuel_grade', nil)
      end

      # Returns the current battery voltage
      #
      # @return [Float]
      def battery_voltage
        @attributes.fetch('battery_voltage', 0).to_f
      end

      # Returns the timestamp of when this vehicle was created
      #
      # @return [DateTime]
      def created_at
        begin
          DateTime.parse(@attributes['created_at'])
        rescue
          nil
        end
      end
      p
      # Returns the timestamp of when this vehicle was last updated
      #
      # @return [DateTime]
      def updated_at
        begin
          DateTime.parse(@attributes['updated_at'])
        rescue
          nil
        end
      end
    end
  end
end
