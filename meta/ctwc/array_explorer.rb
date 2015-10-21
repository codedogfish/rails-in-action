def explorer_array(method)
    code = "['a','b','c'].#{method}"
    puts "Evaluating: #{code}"
    eval code
end

loop { p explorer_array(gets())}
