require 'spec_helper'

describe MessagesController do
  describe "GET /messages/new" do
    before(:each) do
      @message = Message.new
      Message.stub(:new).and_return(@message)
    end

    it "should have a 'new' action" do
      get :new
      response.should be_success
    end

    it "should render the 'new' template" do
      get :new
      response.should render_template("new")
    end

    it "should initialize a new message" do
      Message.should_receive(:new)
      get :new
    end

    it "should expose a new message to the view" do
      get :new
      assigns[:message].should == @message
    end
  end

  describe "POST /messages" do
    it "should initialize a new message from params" do
      attrs = { "body" => "Something interesting" }
      Message.should_receive(:new).with(attrs)
      post :create, message: attrs
    end

    it "should save the message"

    it "should redirect to shared messages list" do
      post :create
      response.should redirect_to(messages_path)
    end
  end
end
