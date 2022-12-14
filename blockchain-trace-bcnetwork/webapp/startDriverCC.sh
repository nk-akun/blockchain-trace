docker exec -e "CORE_PEER_LOCALMSPID=Org1MSP" -e "CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org1.trace.com/users/Admin@org1.trace.com/msp" -e "CORE_PEER_ADDRESS=peer0.org1.trace.com:7051" cli peer chaincode install -n drivercc -v 1.0 -l golang -p github.com/chaincode/drivercc/go/

docker exec -e "CORE_PEER_LOCALMSPID=Org1MSP" -e "CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org1.trace.com/users/Admin@org1.trace.com/msp" -e "CORE_PEER_ADDRESS=peer0.org1.trace.com:7051" cli peer chaincode instantiate -o orderer.trace.com:7050 -C tracechannel -n drivercc -l golang -v 1.0 -c '{"Args":[""]}' -P "OR ('Org1MSP.member','Org2MSP.member')"

sleep 5

docker exec -e "CORE_PEER_LOCALMSPID=Org1MSP" -e "CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org1.trace.com/users/Admin@org1.trace.com/msp" -e "CORE_PEER_ADDRESS=peer0.org1.trace.com:7051"  cli peer chaincode invoke -o orderer.trace.com:7050 -C tracechannel -n drivercc -c '{"function":"initLedger","Args":[""]}'

docker exec -e "CORE_PEER_LOCALMSPID=Org2MSP" -e "CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org2.trace.com/users/Admin@org2.trace.com/msp" -e "CORE_PEER_ADDRESS=peer0.org2.trace.com:7051" cli peer chaincode install -n drivercc -v 1.0 -l golang -p github.com/chaincode/drivercc/go/

docker exec -e "CORE_PEER_LOCALMSPID=Org3MSP" -e "CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org3.trace.com/users/Admin@org3.trace.com/msp" -e "CORE_PEER_ADDRESS=peer0.org3.trace.com:7051" cli peer chaincode install -n drivercc -v 1.0 -l golang -p github.com/chaincode/drivercc/go/

docker exec -e "CORE_PEER_LOCALMSPID=Org4MSP" -e "CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org4.trace.com/users/Admin@org4.trace.com/msp" -e "CORE_PEER_ADDRESS=peer0.org4.trace.com:7051" cli peer chaincode install -n drivercc -v 1.0 -l golang -p github.com/chaincode/drivercc/go/

docker exec -e "CORE_PEER_LOCALMSPID=Org5MSP" -e "CORE_PEER_MSPCONFIGPATH=/opt/gopath/src/github.com/hyperledger/fabric/peer/crypto/peerOrganizations/org5.trace.com/users/Admin@org5.trace.com/msp" -e "CORE_PEER_ADDRESS=peer0.org5.trace.com:7051" cli peer chaincode install -n drivercc -v 1.0 -l golang -p github.com/chaincode/drivercc/go/