module V1
  class SamuiApi < Grape::API
    format :json
    resource :samui do
      desc "さむい"
      params do
        requires :name, type: String, desc: "名前"
        optional :hash, type: String, desc: "ハッシュ"
      end
      post do
        { message: "がんばれ" }
      end
    end
  end
end