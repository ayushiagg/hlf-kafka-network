
# docker exec -it cli peer chaincode invoke -o orderer2.example.com:7050 -n mycca -c '{"Args":["init","a", "20000", "b","2000"]}' -C mychannel


# docker exec -it cli peer chaincode query -o orderer2.example.com:7050 -n mycca -c '{"Args":["query","a"]}' -C mychannel
a=0
while [ $a -lt 24 ] 
  do  
    docker exec -it cli peer chaincode invoke -o orderer2.example.com:7050 -n mycca -c '{"Args":["invoke","a","b","10"]}' -C mychannel
      # increment the value 
      a=`expr $a + 1`
  done

