require 'rails_helper.rb'

describe 'Samui API', type: :request do
  it 'gets samui then return ganbare' do
    attr = {
        name: Faker::Name.name,
        hash: SecureRandom.hex(10)
    }
    post '/api/samui', attr
    expect(response).to be_success
  end
end