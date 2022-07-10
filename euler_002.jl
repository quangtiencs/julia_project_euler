# HackerRank: https://www.hackerrank.com/contests/projecteuler/challenges/euler002
# Project Euler: https://projecteuler.net/problem=2
# Author: quangtiencs

function solution_euler_002(n::Int)::Int
    sum_of_the_even_valued_fib::Int = 0
    a_n::Int = 1
    a_n_1::Int = 2
    i::Int = 0
    
    while a_n_1 <= n
        if i > 0
            a_n, a_n_1 = a_n_1, a_n + a_n_1
        end

        if a_n % 2 == 0
            sum_of_the_even_valued_fib += a_n
        end
        
        i+=1
    end

    return sum_of_the_even_valued_fib
end

function main()
    t = parse(Int, readline())
    for i = 1:t
        n = parse(Int, readline())
        result = solution_euler_002(n)
        println(result)
    end
end

main()