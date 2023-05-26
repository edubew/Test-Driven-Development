class Solver
    def factorial(num)
        if num < 0
            raise ArgumentError, 'Input must be a positive number'
        else
            result = 1
            (1..num).each do |i|
                result *= i
            end
            result
        end
    end

    def reverse(word)
        word.reverse
    end
end