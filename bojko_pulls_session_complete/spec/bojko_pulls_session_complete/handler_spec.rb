# frozen_string_literal: true

require "spec_helper"
require "bojko_pulls_session_complete"

describe BojkoPullsSessionComplete::Handler do
  describe "#handle" do
    it "returns a 302 redirect with Set-Cookie header" do
      result = described_class.instance.handle(event: {}, context: {})

      expect(result[:statusCode]).to eq(302)
      expect(result[:headers]["Location"]).to eq("https://example.com")
      expect(result[:headers]["Set-Cookie"]).to eq("session=dummy; Path=/")
    end
  end
end
