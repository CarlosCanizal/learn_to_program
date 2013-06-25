print "I will turn one billion seconds: "
billion_seconds = Time.local(1985,9,23,00,10,30) + 10**9
puts billion_seconds.strftime("%B %d %Y")