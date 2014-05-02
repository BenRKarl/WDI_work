
def append_receipt
  open('receipts.txt', 'a') { |f|
  f << "Company name: #{@company}\n"
  f << "Service: \n"
  f << "Cost:\n"
  f << "<%= Time.now %>"
}
end

def initialize

@append_array = append_receipt
end
	
