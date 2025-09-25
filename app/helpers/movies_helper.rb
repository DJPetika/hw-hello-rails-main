module MoviesHelper

  def toggle_direction(column)
    if params[:sort] == column
      params[:direction] == 'asc'? 'desc': 'asc'
    else
      'asc'
    end
  end

  def direction_style(column)
    return '' unless params[:sort] == column
      if params[:direction] == 'asc'
        'asc-dir'
      else
        'desc-dir'
      end
  end

  def direction_symbol(column)
    return '' unless params[:sort] == column
      params[:direction] == 'asc'? '↓': '↑'
  end
end
