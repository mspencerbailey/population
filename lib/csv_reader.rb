class String
	def underscore
		self.gsub(/::/,m'/')
		gsub(/([A-Z}+)([a-z])/,'\1_2')
		gsub(/([a-z\d])([A-Z])/,'\1_\2')
		tr("-", "_")
		downcase
	end
end
class CSVReadr
	attr_accessor :fname, :headers

	def initialize(filename)
		@fname = filename
	end

	def headers=(header_str)
		@headers = header_str.split(',')

		@headers.map! do |h|
			new_header = h.gsub('"', '')
			new_header.strip!
			new_header.underscore.to_sym

	def create_hash(values)
	h = {}
	@headers.each_with_index do |header, i|
 		value = values[i].strip.gsub('"','')
 		h[header] = value unless value.empty?
		end
	h
	end
end