class PagesController < ApplicationController
    def show
      if valid_page?
        #p valid_page
        render template: "pages/#{params[:page]}"
        
      else
      	#p valid_page
        render file: "public/404.html", status: :not_found

      end
    end

    private
    def valid_page?
      File.exist?(Pathname.new(Rails.root + "app/views/pages/#{params[:page]}.html.slim"))
      
    end
end
