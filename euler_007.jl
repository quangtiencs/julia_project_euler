# HackerRank: https://www.hackerrank.com/contests/projecteuler/challenges/euler007
# Project Euler: https://projecteuler.net/problem=7
# Author: quangtiencs

function compute_prime_number(n_element::Int)::Array{Int}
    array_prime_number = Int[2]
    a = 3

    while length(array_prime_number) < n_element
        is_prime::Bool = true
        for e in array_prime_number
            if a % e == 0
                is_prime = false
                break
            end
        end

        if is_prime
            push!(array_prime_number, a)
        end
        a += 1
    end

    return array_prime_number
end


function main()
    prime_table = compute_prime_number(10_000)

    t = parse(Int64, readline())
    for i in 1:t
        n = parse(Int64, readline())
        result = prime_table[n]
        println(result)
    end
end

main()