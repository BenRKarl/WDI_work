
def append_receipt
  open('receipts.txt', 'a') { |f|
  f << "Company name: \n"
  f << "Service: \n"
  f << "Cost:\n"
}
end

	
