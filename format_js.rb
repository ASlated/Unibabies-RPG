require 'find'



Find.find('.') do |path|

  next unless path =~ /\.json\Z/

  output = `js-beautify #{path}`

  File.open(path, 'w') do |f|

    f.puts output

  end

end