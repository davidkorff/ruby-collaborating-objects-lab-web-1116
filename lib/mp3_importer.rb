class MP3Importer

	attr_accessor :path

	def files
		Dir.entries(path)[2..-1]
	end

	def initialize(path)
		@path = path
	end

	def import
		files.each do |filename|
			Song.new_by_filename(filename)
		end
	end

end 	
