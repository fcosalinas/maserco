require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe WeeksheetsController do

  # This should return the minimal set of attributes required to create a valid
  # Weeksheet. As you add validations to Weeksheet, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    {}
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # WeeksheetsController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all weeksheets as @weeksheets" do
      weeksheet = Weeksheet.create! valid_attributes
      get :index, {}, valid_session
      assigns(:weeksheets).should eq([weeksheet])
    end
  end

  describe "GET show" do
    it "assigns the requested weeksheet as @weeksheet" do
      weeksheet = Weeksheet.create! valid_attributes
      get :show, {:id => weeksheet.to_param}, valid_session
      assigns(:weeksheet).should eq(weeksheet)
    end
  end

  describe "GET new" do
    it "assigns a new weeksheet as @weeksheet" do
      get :new, {}, valid_session
      assigns(:weeksheet).should be_a_new(Weeksheet)
    end
  end

  describe "GET edit" do
    it "assigns the requested weeksheet as @weeksheet" do
      weeksheet = Weeksheet.create! valid_attributes
      get :edit, {:id => weeksheet.to_param}, valid_session
      assigns(:weeksheet).should eq(weeksheet)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new Weeksheet" do
        expect {
          post :create, {:weeksheet => valid_attributes}, valid_session
        }.to change(Weeksheet, :count).by(1)
      end

      it "assigns a newly created weeksheet as @weeksheet" do
        post :create, {:weeksheet => valid_attributes}, valid_session
        assigns(:weeksheet).should be_a(Weeksheet)
        assigns(:weeksheet).should be_persisted
      end

      it "redirects to the created weeksheet" do
        post :create, {:weeksheet => valid_attributes}, valid_session
        response.should redirect_to(Weeksheet.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved weeksheet as @weeksheet" do
        # Trigger the behavior that occurs when invalid params are submitted
        Weeksheet.any_instance.stub(:save).and_return(false)
        post :create, {:weeksheet => {}}, valid_session
        assigns(:weeksheet).should be_a_new(Weeksheet)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Weeksheet.any_instance.stub(:save).and_return(false)
        post :create, {:weeksheet => {}}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested weeksheet" do
        weeksheet = Weeksheet.create! valid_attributes
        # Assuming there are no other weeksheets in the database, this
        # specifies that the Weeksheet created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Weeksheet.any_instance.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, {:id => weeksheet.to_param, :weeksheet => {'these' => 'params'}}, valid_session
      end

      it "assigns the requested weeksheet as @weeksheet" do
        weeksheet = Weeksheet.create! valid_attributes
        put :update, {:id => weeksheet.to_param, :weeksheet => valid_attributes}, valid_session
        assigns(:weeksheet).should eq(weeksheet)
      end

      it "redirects to the weeksheet" do
        weeksheet = Weeksheet.create! valid_attributes
        put :update, {:id => weeksheet.to_param, :weeksheet => valid_attributes}, valid_session
        response.should redirect_to(weeksheet)
      end
    end

    describe "with invalid params" do
      it "assigns the weeksheet as @weeksheet" do
        weeksheet = Weeksheet.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Weeksheet.any_instance.stub(:save).and_return(false)
        put :update, {:id => weeksheet.to_param, :weeksheet => {}}, valid_session
        assigns(:weeksheet).should eq(weeksheet)
      end

      it "re-renders the 'edit' template" do
        weeksheet = Weeksheet.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Weeksheet.any_instance.stub(:save).and_return(false)
        put :update, {:id => weeksheet.to_param, :weeksheet => {}}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested weeksheet" do
      weeksheet = Weeksheet.create! valid_attributes
      expect {
        delete :destroy, {:id => weeksheet.to_param}, valid_session
      }.to change(Weeksheet, :count).by(-1)
    end

    it "redirects to the weeksheets list" do
      weeksheet = Weeksheet.create! valid_attributes
      delete :destroy, {:id => weeksheet.to_param}, valid_session
      response.should redirect_to(weeksheets_url)
    end
  end

end
