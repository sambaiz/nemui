module API_V1
  class Base < Grape::API
    mount V1::NemuiApi
    mount V1::SamuiApi
    add_swagger_documentation(
        api_version: '1.0',
        base_path: "/api",
        hide_documentation_path: true
    )
  end
end
