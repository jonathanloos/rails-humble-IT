module Feedback
  class ApplicationController < ::ApplicationController
    protect_from_forgery with: :exception
    include Pagy::Backend
  end
end
