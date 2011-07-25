require 'spec_helper'

describe MessagesController do
  it "should have a 'new' action" do
    get :new
    response.should be_success
  end

  it "should render the 'new' template" do
    get :new
    response.should render_template("new")
  end
end
