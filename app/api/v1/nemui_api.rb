module V1
  class NemuiApi < Grape::API
    format :json
    resource :nemui do
      desc "ねむい"
      params do
        requires :name, type: String, desc: "名前"
        requires :hash, type: String, desc: "ハッシュ"
      end
      post do
      end
    end
  end
end