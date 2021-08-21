function main(numberOfDigits::BigInt, starting::BigInt = big(6))

    current::BigInt = starting
    place::BigInt = 1

    for p::Int64 in 2:numberOfDigits

        println(p)

        place *= 10
        h::BigInt = place*10

        for d::BigInt in 0:9

            possible::BigInt = d*place + current

            if (possible^2)%h == possible

                current = possible
                
                break

            end

        end    
    end

    text::IOStream = open("Automorphic Number with $numberOfDigits digits.txt", "w")
    print(text, current)
    flush(text)
    close(text)
    print("DONE!")

end

