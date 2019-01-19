begin() {
    read -p 'How many digits [0-5]: ' dig

    if [ $dig -ne 0 ]
    then    
        rand
    else 
        exit
    fi
}

rand() {

    alg=$[10 ** $dig]
    let min=$[10 ** ($dig-1)]
    let max=$alg-$min

    let num1=$RANDOM%$max
    let num1+=$min

    let num2=$RANDOM%$max
    let num2+=$min

    func
}

func() { 

    if [ "$op" = "" ]
    then
        read -p '-, +, / or * : ' op
    else    
        echo 
    fi

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

    if [ "$pal" = "" ]
    then    
        begin
    fi

    if [ "$pal" != "$res" ]
    then   
        echo Incorrect
        func
    else 
        echo Correct
        rand
    fi
}

begin