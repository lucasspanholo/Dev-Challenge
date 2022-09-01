require 'spec_helper'
require 'home_controller'

describe HomeController do
    it 'rubys request is ok' do
        rb = HomeController.new
        expect(rb.ruby).to eq('test')
    end
end