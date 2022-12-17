const Web3 = require('web3');
const contractABI =[
	{
		"anonymous": false,
		"inputs": [
			{
				"indexed": true,
				"internalType": "address",
				"name": "sender",
				"type": "address"
			},
			{
				"indexed": false,
				"internalType": "string",
				"name": "message",
				"type": "string"
			}
		],
		"name": "messLog",
		"type": "event"
	},
	{
		"anonymous": false,
		"inputs": [
			{
				"indexed": true,
				"internalType": "address",
				"name": "sender",
				"type": "address"
			},
			{
				"indexed": false,
				"internalType": "string",
				"name": "message",
				"type": "string"
			}
		],
		"name": "messLog2",
		"type": "event"
	},
	{
		"anonymous": false,
		"inputs": [
			{
				"indexed": true,
				"internalType": "address",
				"name": "sender",
				"type": "address"
			},
			{
				"indexed": false,
				"internalType": "string",
				"name": "message",
				"type": "string"
			}
		],
		"name": "messLog3",
		"type": "event"
	},
	{
		"inputs": [],
		"name": "test",
		"outputs": [],
		"stateMutability": "nonpayable",
		"type": "function"
	}
];
const contractAddress = '0x7c2ccb8d0b20cc19c6c912f5c361a4d21ab5094a';

// Initialize web3
const web3 = new Web3(new Web3.providers.WebsocketProvider('ws://localhost:8546'));

// Create a contract object
const contract = new web3.eth.Contract(contractABI, contractAddress);

// Listen for events
contract.events.messLog({}, (error, event) => {
    if (error) {
        console.error(error);
    } else {
        console.log(event);
    }
});

contract.events.messLog2({}, (error, event) => {
    if (error) {
        console.error(error);
    } else {
        console.log(event);
    }
});

contract.events.messLog3({}, (error, event) => {
    if (error) {
        console.error(error);
    } else {
        console.log(event);
    }
});
