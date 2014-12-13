module API
  class Base < Grape::API
    mount API_V1::Base
  end
end
