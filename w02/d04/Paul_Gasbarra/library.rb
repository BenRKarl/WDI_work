class Manuscript
  def communicate
    "I communicate something."
  end
end

class Book < Manuscript
  def cover_page
    'I have a cover page.'
  end
end

class Scroll < Manuscript
end
