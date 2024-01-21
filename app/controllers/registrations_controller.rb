class RegistrationsController < ApplicationController

    def new
        @user = User.new
    end

    def create
        # render plain: "Thanks!\n\t#{params[:user]}"

        @user = User.new(user_params)

        if @user.save
            redirect_to root_path, notice: "Successfully created account"
        else
            # flash[:alert] = "OOPS - something went wrong"
            render :new
        end
    end

private

    # Add some security before inserting data into the database
    #    `@user = User.new(params[:user])` => TOO DANGERIOUS
    #
    # The `params` object has the `.require()` and `.permit()` methods.
    # We call these to preform some validation on the `params` we got 
    # from the network.
    def user_params
        params.require(:user).permit(:email, :password, :password_confirmation)
    end
end