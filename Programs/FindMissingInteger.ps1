class MissingInt {
    static [int] Search ([int[]] $Array, [int] $SizeOfArray) {
        [int] $l = 0 ; [int] $ResizeArray = $SizeOfArray - 1

        while ($l -le $ResizeArray) {
            [int] $Split = ($l + $ResizeArray) / 2

            if (($Array[$Split] -ne $Split + 1) -and $Array[$Split - 1] -eq $Split) {
                return $Split + 1
            } 
            elseif (($Array[$Split]) -ne $Split + 1) {
                $ResizeArray = $Split - 1
            }
            else {
                $l = $Split + 1
            }
        }
        # Return if no number is missing
        return - 1
    }
}

# Example
[int[]] $Array = 1,2,3,4,5,6,8
$SizeOfArray = $Array.length

[MissingInt]::Search($Array, $SizeOfArray)
# Result 7
