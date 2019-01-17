begin() {
    echo
    read -p 'How many digits [0-5]: ' dig

    alg=$[10 ** $dig]
    let min=$[10 ** ($dig-1)]
    let max=$alg-$min

    let num1=$RANDOM%$max
    let num1+=$min

    let num2=$RANDOM%$max
    let num2+=$min

    if [ $dig -ne 0 ]
    then    
        func
    else 
        exit
    fi
}

func() {

    read -p '-, +, / or * : ' op

    if [ "$op" = "+" ]
    then
        let res=$num1+$num2
        echo $num1 + $num2:  
        read pal
    elif [ "$op" = "-" ]
    then
        let res=$num1-$num2
        echo $num1 - $num2:  
        read pal
    elif [ "$op" = "*" ]
    then
        let res=$num1*$num2
        echo $num1 * $num2:  
        read pal
    elif [ "$op" = "/" ]
    then
        let res=$num1/$num2
        echo $num1 / $num2:  
        read pal
    fi

    if [ $pal -ne $res ]
    then   
        echo Incorrect
        func
    else 
        echo Correct
        begin
    fi
}
begin