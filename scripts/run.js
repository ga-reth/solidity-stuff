async function main() {

    // We get the contract to deploy
    const Staker = await hre.ethers.getContractFactory("Staker");
    const staker = await Staker.deploy("Hello, Hardhat!");
    
    await staker.deployed();
    
    console.log("Greeter deployed to:", staker.address);
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
});