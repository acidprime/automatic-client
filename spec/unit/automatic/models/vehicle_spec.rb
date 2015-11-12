require 'spec_helper'

describe Automatic::Models::Vehicle do
  let(:vehicle_file) do
    File.read(File.expand_path('../../../../data/models/vehicle.json', __FILE__))
  end

  let(:vehicle) do
    MultiJson.load(vehicle_file)
  end

  let(:attributes) { vehicle }

  subject { described_class.new(attributes) }

  context "with all values" do
    it "returns the #id" do
      expect(subject.id).to eq('529e5772e4b00a2ddb562f1f')
    end

    it "returns the #url" do
      expect(subject.url).to eq('https://api.automatic.com/v1/vehicles/529e5772e4b00a2ddb562f1f')
    end

    # NOTE: only applicable with available scopes
    it "returns the #vin" do
      expect(subject.vin).to eq('1234')
    end

    it "returns the #year" do
      expect(subject.year).to eq(2001)
    end

    it "returns the #make" do
      expect(subject.make).to eq('Acura')
    end

    it "returns the #model" do
      expect(subject.model).to eq('MDX')
    end

    it "returns the #sub_model" do
      expect(subject.sub_model).to eq('Sub')
    end

    # NOTE: This should return the HEX
    it "returns the #color" do
      expect(subject.color).to eq('purple')
    end

    it "returns the #display_name" do
      expect(subject.display_name).to eq('My Speed Demon')
    end

    it "returns the #fuel_level_percent" do
      expect(subject.fuel_level_percent).to eq(83.52)
    end

    it "returns the #fuel_grade" do
      expect(subject.fuel_grade).to eq('premium')
    end

    it "returns the #battery_voltage" do
      expect(subject.battery_voltage).to eq(14.0)
    end

    it "returns the #created_at timestamp" do
      expected = DateTime.parse("2015-08-06T00:21:16.649800Z")
      expect(subject.created_at).to eq(expected)
    end

    it "returns the #updated_at timestamp" do
      expected = DateTime.parse("2015-08-06T00:21:18.988534Z")
      expect(subject.updated_at).to eq(expected)
    end
  end
end
