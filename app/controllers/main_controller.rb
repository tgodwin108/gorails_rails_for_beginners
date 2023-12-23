class MainController < ApplicationController

    # If I don't have an #index() method, Rails assumes 
    # that every controller should have an "index" view,
    # so it will look for `views/main/index.html.erb`

    # If I have an #index() method, it just confirms
    # there is a matching view `views/main/index.html.erb`

    # adding and removing #index() method is how
    # the "flash" message was demo'ed in Part 10.
    # def index
    #     flash.now[:notice] = 'Hello Tony'
    # end
end
