// solidity by example

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

async function counter() {
  const Counter = await hre.ethers.getContractFactory("Counter");

  const counterContract = await Counter.deploy();
  console.log("Counter deployed to:", counterContract.address);

  const getTxn = await counterContract.get();
  console.log(getTxn);

  const incTxn = await counterContract.inc();
  await incTxn.wait();

  const getTxn2 = await counterContract.get();
  console.log(getTxn2);
}

async function storage() {
  const Storage = await hre.ethers.getContractFactory("SimpleStorage");

  const storageContract = await Storage.deploy();
  console.log("Storage deployed to:", storageContract.address);

  // get or read, don't need txns
  const getTxn = await storageContract.get();
  console.log(getTxn);

  // write to state needs txns
  const stateTxn = await storageContract.set(123);
  await stateTxn.wait();

}

async function gas() {
  const gas = await hre.ethers.getContractFactory("Gas");

  const gasContract = await gas.deploy();
  console.log("Gas deployed to:", gasContract.address);

  // get or read, don't need txns
  const foreverTxn = await gasContract.forever();
  console.log(foreverTxn);
}

async function main() {

    // await hello_world();
    // await counter();
    // await primitives();
    // await variables();
    // await storage();
    await gas();

    console.log("_____________main complete");
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
});