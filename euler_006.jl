# HackerRank: https://www.hackerrank.com/contests/projecteuler/challenges/euler006
# Project Euler: https://projecteuler.net/problem=6
# Author: quangtiencs

function solution_euler_006(n::Int64)::Int64
    return div((3 * n^4 + 2 * n^3 - 3 * n^2 - 2 * n), 12)
end

function main()
    t = parse(Int64, readline())
    for i in 1:t
        n = parse(Int64, readline())
        result = solution_euler_006(n)
        println(result)
    end
end

main()