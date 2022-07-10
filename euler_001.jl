# HackerRank: https://www.hackerrank.com/contests/projecteuler/challenges/euler001
# Project Euler: https://projecteuler.net/problem=1
# Author: quangtiencs

sum_arithmetic_series(a_1::Int, a_n::Int, n::Int)::Int = div(n * (a_1 + a_n), 2)

function solution_euler_001(n::Int)::Int
    # Below n
    n -= 1
    sum_of_all_the_multiples::Int = 0

    sum_of_all_the_multiples += sum_arithmetic_series(0, n - n % 3, div(n, 3) + 1)
    sum_of_all_the_multiples += sum_arithmetic_series(0, n - n % 5, div(n, 5) + 1)
    sum_of_all_the_multiples -= sum_arithmetic_series(0, n - n % 15, div(n, 15) + 1)
    return sum_of_all_the_multiples
end

function main()
    t = parse(Int, readline())
    for i = 1:t
        n = parse(Int, readline())
        result = solution_euler_001(n)
        println(result)
    end
end

main()
