begin() {
    echo
    read -p 'How many digits [0-5]: ' dig
    alg=$[10 ** $dig]
    let min=$[10 ** $dig-2]
    let num1=$RANDOM%$alg+min
    let num2=$RANDOM%$alg+min
    let res=$num1+$num2
    if [ $dig -ne 0 ]
    then    
        func
    else 
        exit
    fi
}

func() {
    echo $num1 + $num2:  
    read pal
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
