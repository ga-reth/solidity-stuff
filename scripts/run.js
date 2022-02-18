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

async function mapping() {
  // mapping
  const mapping = await hre.ethers.getContractFactory("Mapping");
  const mappingContract = await mapping.deploy();
  
  const getMappingTxn = await mappingContract.get();
  console.log(getMappingTxn);

  const setTxn = await mappingContract.set(999);
  await setTxn.wait();
  console.log(setTxn);

  const getMappingTxn2 = await mappingContract.get();
  console.log(getMappingTxn2);

  const delTxn = await mappingContract.remove();
  await delTxn.wait();
  console.log(delTxn);

  const getMappingTxn3 = await mappingContract.get();
  console.log(getMappingTxn3);

  // nested mapping
  const nestedMapping = await hre.ethers.getContractFactory("NestedMapping");
  const nestMapContract = await nestedMapping.deploy();

  const getNestTxn = await nestMapContract.get(1);
  console.log(getNestTxn);
  const setNestTxn = await nestMapContract.set(1,true);
  await setNestTxn.wait();
  const getNestTxn2 = await nestMapContract.get(1);
  console.log(getNestTxn2);

}

async function arr() {
  const arr = await hre.ethers.getContractFactory("Array");

  const arrContract = await arr.deploy();
  console.log("arr deployed to:", arrContract.address);

  // get or read, don't need txns
  const txn = await arrContract.get(1);
  console.log(txn);
}

async function main() {

    // await hello_world();
    // await counter();
    // await primitives();
    // await variables();
    // await storage();
    // await gas();
    // await mapping();
    await arr();

}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
});