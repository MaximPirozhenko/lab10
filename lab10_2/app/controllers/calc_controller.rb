class CalcController < ApplicationController
  def input
  end

  def view
    @xml = Nokogiri::XML(open("http://127.0.0.1:3000/calc/view.xml?v2=#{params[:v2].split(' ').join("+")}"))
    xslt = Nokogiri::XSLT(File.read('view.xslt'))
    if params[:commit] == 'Посмотреть результат'
    @result = xslt.transform(@xml)
    else
      render xml:@xml
    end
  end
end
