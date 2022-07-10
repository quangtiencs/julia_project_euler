# HackerRank: https://www.hackerrank.com/contests/projecteuler/challenges/euler004
# Project Euler: https://projecteuler.net/problem=4
# Author: quangtiencs

function solution_euler_004(n::Int64)::Int64
    max_palind_prod::Int64 = -1
    for i in 1:1000
        for j in 1:1000
            if i <= j
                p_n = i*j
                string_p_n = string(p_n)
                if p_n < n && p_n > max_palind_prod && string_p_n == reverse(string_p_n)
                    max_palind_prod = p_n
                end
            end
        end
    end
    return max_palind_prod
end

function main()
    t = parse(Int64, readline())
    for i in 1:t
        n = parse(Int64, readline())
        result = solution_euler_004(n)
        println(result)
    end
end

main()