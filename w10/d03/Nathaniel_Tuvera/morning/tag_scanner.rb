def html_tags(string)
  tag_regex = (/<[a-zA-z]*[0-9]*>/i)
  if string.scan(tag_regex)
    # puts 'there are tags'
    return string.scan(tag_regex)
  else
    puts 'no tags here'
  end

end
