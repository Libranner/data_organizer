#Sample Data
data = [["Family", nil], ["Parenting", "Family"], ["Caregiving", "Family"],
["Finances", "Family"], ["RRSPs", "Finances"], ["Savings", "Finances"],
["Planning", "Finances"], ["Career",nil], ["Managers", "Career"],
["Employees", "Career"]]

def organize_data(parent, data)
	result = []
	
	#Get children that belongs to a specific parent
	data.each do |d|
		result << d[0] if d[1] == parent
	end
	
	puts parent if parent #Print parent name
	
	if result.count > 0
		result.sort! #Sort children by name
		result.each { |p| organize_data(p, data) } #Recursively get children
	end
	return
end

organize_data(nil, data)