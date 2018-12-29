begin() {
    read -p 'How many digits [0-5]: ' dig
    alg=$[10 ** $dig]
    let num1=$RANDOM%$alg
    let num2=$RANDOM%$alg
    let res=$num1+$num2
}

func() {
    echo $num1 + $num2:  
    read pal
    echo 
    if [ $pal -ne $res ]
    then   
        echo Incorrect
        func
    fi
}
begin
func
echo Correct

