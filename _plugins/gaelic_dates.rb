module Jekyll
module GaelicDates
	MONTHS = {"01" => "Am Faoilleach", "02" => "An Gearran", "03" => "Am Màrt",
			"04" => "An Giblean", "05" => "An Cèitean", "06" => "An t-Ògmhios",
			"07" => "An t-Iuchar", "08" => "An Lùnastal", "09" => "An t-Sultain",
			"10" => "An Dàmhair", "11" => "An t-Samhain", "12" => "An Dùbhlachd"}

	# http://man7.org/linux/man-pages/man3/strftime.3.html
	def gaelicDate(date)
		day = time(date).strftime("%e") # leading zero is replaced by a space
		month = time(date).strftime("%m")
		year = time(date).strftime("%Y")
		day+' '+MONTHS[month]+' '+year
	end

	def html5date(date)
		day = time(date).strftime("%d")
		month = time(date).strftime("%m")
		year = time(date).strftime("%Y")
		year+'-'+month+'-'+day
	end
end
end

Liquid::Template.register_filter(Jekyll::GaelicDates)