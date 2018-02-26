s () {
  if string match -r -i 'i-[0-9a-z]{17}' $argv[1]
  then
    echo AWS Instacne Pattern Matched
    ssh ken_wang@$argv[1].$AWS
  else
    echo Not Matched
  fi
}
