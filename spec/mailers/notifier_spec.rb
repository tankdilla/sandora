require "spec_helper"

describe Notifier do
  describe "comment_received" do
    let(:mail) { Notifier.comment_received }

    it "renders the headers" do
      mail.subject.should eq("Comment received")
      mail.to.should eq(["to@example.org"])
      mail.from.should eq(["from@example.com"])
    end

    it "renders the body" do
      mail.body.encoded.should match("Hi")
    end
  end

  describe "order_created" do
    let(:mail) { Notifier.order_created }

    it "renders the headers" do
      mail.subject.should eq("Order created")
      mail.to.should eq(["to@example.org"])
      mail.from.should eq(["from@example.com"])
    end

    it "renders the body" do
      mail.body.encoded.should match("Hi")
    end
  end

  describe "report_generated" do
    let(:mail) { Notifier.report_generated }

    it "renders the headers" do
      mail.subject.should eq("Report generated")
      mail.to.should eq(["to@example.org"])
      mail.from.should eq(["from@example.com"])
    end

    it "renders the body" do
      mail.body.encoded.should match("Hi")
    end
  end

end
