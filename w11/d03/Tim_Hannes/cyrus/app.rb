def remove_punctuation(chars)
  Dir['files'].each do |file|
    if File.directory?(file)
      replace_punctuation(chars)
    else
      replaced = File.read('files').delete(chars)
      File.write(replaced)
    end
  end
end
