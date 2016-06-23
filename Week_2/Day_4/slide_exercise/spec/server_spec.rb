require './server'
require 'rspec'
require 'rack/test'

describe 'Server Service' do
  include Rack::Test::Methods

    def app
      Sinatra::Application
    end

    describe 'GET /' do
      it 'returns 200 OK' do
        get '/'

        expect(last_response.status).to eq(200)
        #or
        #expect(last_response).to be_ok
        #which means
        #exepct(last_response.ok?).to be_truthy
      end

      it "Includes I'm home" do
      get '/'

      expect(last_response.body).to include("I'm home")
    end
  end

    describe 'GET /coolpage' do
      it 'redirects to the homepage' do
        get '/coolpage'

        expect(last_response.redirect?).to eq(true)
        follow_redirect!
        expect(last_request.path).to eq('/')
      end
    end
end
