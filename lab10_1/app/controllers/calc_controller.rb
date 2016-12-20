include CalcHelper
class CalcController < ApplicationController
  def input
  end

  def view
    processing(params[:v2])
    respond_to do |format|
      format.html
      format.xml do
        render xml: {
            all: @all,
            kolvo_posl: @kolvo_posl,
            inputed: @inputed,
            max_posl: @max_posl
        }
         end
      end
    end
  end