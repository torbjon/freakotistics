helpers do
  def checked? id
    if params[:chart1] == id.to_s || params[:chart2] == id.to_s
      'checked'
    else
      'class="disabled"'
    end
  end
end