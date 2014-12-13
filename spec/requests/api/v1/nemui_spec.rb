require 'rails_helper.rb'

describe 'Nemui API', type: :request do
  it 'gets nemui then return ganbare' do
    attr = {
        name: Faker::Name.name,
        hash: SecureRandom.hex(10)
    }
    post '/api/nemui', attr
    expect(response).to be_success
  end
end