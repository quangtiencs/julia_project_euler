# HackerRank: https://www.hackerrank.com/contests/projecteuler/challenges/euler008
# Project Euler: https://projecteuler.net/problem=8
# Author: quangtiencs

function greatest_product_of_consecutive_digits(array::Array{Int}, k::Int)::Int
    product = prod(array[1:k])
    cache = array[1]
    maximum_prod = product

    for i in 1:(length(array)-k)
        if cache != 0
            product = div(product, cache) * array[k+i]
        else
            product = prod(array[1+i:k+i])
        end
        cache = array[1+i]
        if product > maximum_prod
            maximum_prod = product
        end
    end
    return maximum_prod
end

function main()
    t = parse(Int64, readline())
    for i in 1:t
        n, k = map((x) -> parse(Int64, x), split(readline(), " "))
        arr_number = [parse(Int, e) for e in readline()]
        result = greatest_product_of_consecutive_digits(arr_number, k)
        println(result)
    end
end

main()