describe 'database' do
	def run_script(commands)
		raw_ouput = nil
		IO.popen("./db", "r+") do |pipe|
			commands.each do |command|
				pipe.puts command
			end

			pipe.close_write
			
			raw_ouput = pipe.gets(nil)
		end
		raw_ouput.puts("\n")
	end


	
	
end

