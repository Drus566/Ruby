##  Creating a basic method or function 

require 'rubygems'
require 'inline'
require 'benchmark'

class CFactorial
inline do |builder|
    builder.c "
        long factorial(int max){
            int i = max, result = 1;
            while (i >= 2) {result *= i--; }
                return result;
        }"
    end
end

class Fixnum 
    def factorial
        (1..self).inject { |a,b| a * b }
    end
end

Benchmark.bm do |bm|
    bm.report('ruby:') do
        100000.times { 8.factorial }
    end

    bm.report('c:') do
        c = CFactorial.new
        100000.times { c.factorial(8) }
    end
end
