require 'rails_helper.rb'

describe 'Nemui API', type: :request do
  it 'gets nemui then return ganbare' do
    attr = {
        name: Faker::Name.name,
    }
    post '/api/nemui', attr
    expect(response).to be_success
    json = JSON.parse(response.body)
    expect(json['message']).to eq 'がんばれ'
  end

  it 'gets worng nemui' do
    attr = {
        name: nil
    }
    post '/api/nemui', attr
    expect(response).not_to be_success
  end
end