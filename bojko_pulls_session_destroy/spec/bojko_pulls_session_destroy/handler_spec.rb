# frozen_string_literal: true

require "spec_helper"
require "bojko_pulls_session_destroy"

describe BojkoPullsSessionDestroy::Handler do
  describe "#handle" do
    it "returns 200 with Set-Cookie header to clear session" do
      result = described_class.instance.handle(event: {}, context: {})

      expect(result[:statusCode]).to eq(200)
      expect(result[:headers]["Set-Cookie"]).to eq("session=; Path=/; Max-Age=0")
    end
  end
end
