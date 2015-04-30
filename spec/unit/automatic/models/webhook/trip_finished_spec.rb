require 'spec_helper'

describe Automatic::Models::Webhook::TripFinished do
  let(:trip_finished_file) do
    File.read(File.expand_path('../../../../../data/models/webhook/trip_finished.json', __FILE__))
  end

  let(:trip_finished) do
    MultiJson.load(trip_finished_file)
  end

  let(:attributes) { trip_finished }

  subject { described_class.new(attributes) }

  context "with all values" do
    context "associated models" do
      it "returns a webhook #user object" do
        expect(subject.user).to be_a(Automatic::Models::Webhook::User)
      end

      it "returns a core #location object" do
        expect(subject.location).to be_a(Automatic::Models::Location)
      end

      it "returns a webhook #vehicle object" do
        expect(subject.vehicle).to be_a(Automatic::Models::Webhook::Vehicle)
      end

      it "returns a webhook #trip object" do
        expect(subject.trip).to be_a(Automatic::Models::Webhook::Trip)
      end
    end

    it "returns the #id" do
      expect(subject.id).to eq('349857345897345')
    end

    it "returns the #type" do
      expect(subject.type).to eq('ignition:on')
    end

    it "returns the #time_zone" do
      expect(subject.time_zone).to eq('America/New_York')
    end

    it "returns the #unix_created_at" do
      expect(subject.unix_created_at).to eq(1430400182)
    end

    it "returns the #created_at time in zone" do
      expected = '2015-04-30 09:23:02 -0400'
      expect(subject.created_at.to_s).to eq(expected)
    end
  end
end
