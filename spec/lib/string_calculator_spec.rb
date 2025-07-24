# spec/lib/string_calculator_spec.rbs
require 'rspec'
require_relative '../../lib/string_calculator'

RSpec.describe StringCalculator do
  describe ".add" do
    context "when the input is an empty string" do
      it "returns 0" do
        expect(StringCalculator.add("")).to eq(0)
      end
    end
  end
end
