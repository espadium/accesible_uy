require 'spec_helper'

describe ApplicationController do
  describe 'GET index' do
    it 'should show the comming soon page' do
      get :index
      response.should be_success
    end
  end
end
