class CouponsController < ApplicationController

    def index
        @coupons = Coupon.all
    end

    def show
        @coupon = Coupon.find(params[:id])
    end

    def new
        #render :coupons/new
        #format.html { render :template => "coupons/new" }
        #render :template => "coupons/new"
    end
    
    def create
        @coupon = Coupon.new(coupon_code:params[:coupon][:coupon_code],store:params[:coupon][:store])
        if @coupon.save
            redirect_to @coupon
        end
    end
end 


