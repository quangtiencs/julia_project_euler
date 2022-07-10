# HackerRank: https://www.hackerrank.com/contests/projecteuler/challenges/euler003
# Project Euler: https://projecteuler.net/problem=3
# Author: quangtiencs

function solution_euler_003(n::Int64)::Int64
    @assert n > 1 "Wrong input, n > 1"
    # set dummy variable
    largest_prime_factor::Int64 = 0

    while n % 2 == 0
        n = n >> 1
        largest_prime_factor = 2
    end

    while n % 3 == 0
        n = div(n, 3)
        largest_prime_factor = 3
    end

    for i in 5:6:convert(Int64, trunc(sqrt(n)))
        while n % i == 0
            n = div(n, i)
            largest_prime_factor = i
        end
        i_2 = i + 2
        while n % i_2 == 0
            n = div(n, i_2)
            largest_prime_factor = i_2
        end
    end

    if n > 1
        largest_prime_factor = n
    end

    return largest_prime_factor
end

function main()
    t = parse(Int64, readline())
    for i in 1:t
        n = parse(Int64, readline())
        result = solution_euler_003(n)
        println(result)
    end
end

main()
