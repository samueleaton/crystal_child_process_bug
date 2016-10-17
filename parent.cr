puts "parent pid from parent: #{Process.pid}"
child_process = Process.new("./child", shell: true, output: true, error: true)
puts "child pid from parent: #{child_process.pid}"
puts "process group id from parent: #{Process.pgid}"
sleep 2
