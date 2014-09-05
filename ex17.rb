from_file, to_file = ARGV

puts "Copying form #{from_file} to #{to_file}"

indata = open(from_file).read

puts "The input file is #{indata.length} bytes long."

puts "Does the output file exist? #{File.exist?(to_file)}"
puts "Ready, hit RETURN to continue, CTRL-C to abort."
$stdin.gets

out_file = open(to_file, 'w')
out_file.write(indata)

puts "Alright, all down."

out_file.close
