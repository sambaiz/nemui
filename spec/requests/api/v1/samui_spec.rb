require 'rails_helper.rb'

describe 'Samui API', type: :request do
  it 'gets samui then return ganbare' do
    attr = {
        name: Faker::Name.name,
    }
    post '/api/samui', attr
    expect(response).to be_success
    json = JSON.parse(response.body)
    expect(json['message']).to eq 'がんばれ'
  end

  it 'gets worng samui' do
    attr = {
        name: nil
    }
    post '/api/samui', attr
    expect(response).not_to be_success
  end
end