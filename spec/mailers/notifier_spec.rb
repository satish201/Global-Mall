require "spec_helper"

describe Notifier do
  describe "email_to_gm" do
    let(:mail) { Notifier.email_to_gm }

    it "renders the headers" do
      mail.subject.should eq("Email to gm")
      mail.to.should eq(["to@example.org"])
      mail.from.should eq(["from@example.com"])
    end

    it "renders the body" do
      mail.body.encoded.should match("Hi")
    end
  end

end
