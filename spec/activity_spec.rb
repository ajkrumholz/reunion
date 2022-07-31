require 'spec_helper'

RSpec.describe Activity do

  context 'Iteration 1' do
    let(:activity) {described_class.new("Brunch")}

    it 'exists' do
      expect(activity).to be_instance_of(described_class)
    end

    it '#name' do
      expect(activity.name).to eq("Brunch")
    end

    it '#participants' do
      expect(activity.participants).to eq({})
    end

    it '#add_participant' do
      activity.add_participant("Maria", 20)
      expect(activity.participants).to eq({"Maria" => 20})
      activity.add_participant("Luther", 40)
      expect(activity.participants).to eq({"Maria" => 20, "Luther" => 40})
    end

    it '#total_cost' do
      activity.add_participant("Maria", 20)
      activity.add_participant("Luther", 40)
      expect(activity.total_cost).to eq(60)
    end
  end
end