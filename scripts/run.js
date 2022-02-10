async function hello_world() {
  const Hello = await hre.ethers.getContractFactory("Hello");

  const helloContract = await Hello.deploy();
  await helloContract.deployed();
  console.log("Hello deployed to:", helloContract.address);

  const greetTxn = await helloContract.greet("Hello world!");
  await greetTxn.wait();
  const greetTxn2 = await helloContract.greet("Hello world, again!");
  await greetTxn2.wait();
}

async function main() {

    await hello_world()

    console.log("main complete");
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
});