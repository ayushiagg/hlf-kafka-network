# to be executed on start
docker exec -it cli peer chaincode install -n mycca -p github.com/chaincode/chaincode_example02/go/ -v v0
docker exec -it cli peer chaincode instantiate -o orderer0.example.com:7050 -C mychannel -n mycca github.com/chaincode/chaincode_example02/go/ -v v0 -c '{"Args":["init","a", "20000", "b","2000"]}'