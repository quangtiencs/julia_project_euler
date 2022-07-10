# HackerRank: https://www.hackerrank.com/contests/projecteuler/challenges/euler005
# Project Euler: https://projecteuler.net/problem=5
# Author: quangtiencs

function solution_euler_005(n::Int64)::Int64
    smallest_multiple = 1

    for i in 1:n
        current_gcd = gcd(smallest_multiple, i)
        unique_1 = div(smallest_multiple, current_gcd)
        unique_2 = div(i, current_gcd)
        smallest_multiple = unique_1 * current_gcd * unique_2
    end
    
    return smallest_multiple
end

function main()
    t = parse(Int64, readline())
    for i in 1:t
        n = parse(Int64, readline())
        result = solution_euler_005(n)
        println(result)
    end
end

main()