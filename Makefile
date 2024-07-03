-include .env

.PHONY: all test clean 

all: clean remove install update build

clean: 
	forge clean

remove: 
	rm -rf .gitmodules && rm -rf .git/modules/* && rm -rf lib && touch .gitmodules && git add . && git commit -m "Remove modules"

install: 
	forge install OpenZeppelin/openzeppelin-contracts
	forge install foundry-rs/forge-std

update: 
	forge update

build: 
	forge build

test: 
	forge test

snapshot: 
	forge snapshot

format: 
	prettier --write --plugin=prettier-plugin-solidity src/**/*.sol

lint: 
	solhint src/**/*.sol
