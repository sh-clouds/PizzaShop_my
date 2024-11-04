#require "carts_helper"
#require_relative "../helpers/carts_helper.rb"

class CartsController < ApplicationController
  #extend CartsHelper

    # Parse orders line:
  def parse_orders_input s

    s1 = s.split(/,/)

    arr = []

    s1.each do |x|
      s2 = x.split(/=/)
      s3 = s2[0].split(/_/)

      id = s3[1]
      cnt = s2[1]

      arr2 = [id, cnt]
      arr.push arr2
    end

    return arr
  end

  def index
    @items = @@items
    @orders_input = @@orders_input
  end

  def create

    @orders_input = params[:orders]

    #@orders_input = "product_3=5,product_1=3,product_2=2,"
    @items = parse_orders_input @orders_input

    #@items = []
    #@items.push(["1","3"])
    #@items.push(["2","2"]) 
    #@items.push(["3","5"])
  
    @items.each do |item|
    # id, cnt
      item[0] = Product.find(item[0])
    end

    @@items = @items
    @@orders_input = @orders_input

    render action: 'index'
  end


end
