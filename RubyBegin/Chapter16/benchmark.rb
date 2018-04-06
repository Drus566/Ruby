# #standart library
# require 'benchmark'
# puts Benchmark.measure { 10000000.times { rand } }

#---------- bm method

require 'benchmark'

TIMES = 10000000
Benchmark.bm do |b|
    b.report("times") { TIMES.times {rand} }
    b.report("upto") { 1.upto(TIMES) {rand} }
    b.report("loop") {
        i = 0
        loop do
            rand
            i += 1
            break if i == TIMES
        end
    }
end