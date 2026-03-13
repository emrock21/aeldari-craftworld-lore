Aeldari Craftworld Lore – On‑Chain Creativity
This repository contains a simple and completely safe Solidity smart contract that allows anyone to create and customize their own Aeldari Craftworld directly on the blockchain. Warhammer 40,000 has always encouraged players to invent their own Craftworlds, write their own stories, and explore the fate of the Aeldari through imagination and artistry. This contract brings that same spirit into Web3.

The contract stores three pieces of Craftworld identity:

The Craftworld name

The leader or ruling council

The mission or guiding purpose

Anyone can update these values, making it a collaborative and creative way to express Aeldari lore on-chain.

Contract Address and Verification
The contract is deployed and fully verified on BaseScan:

https://basescan.org/address/0xde4b882aca169239be13c71344efe664926c91fd#code

Because it is verified, anyone can read the source code, interact with the functions, and confirm that it is completely safe.

About the Contract
The contract CraftworldLore.sol allows users to:

Change the Craftworld name

Change the leader or ruling body

Change the mission or purpose

Read a combined description of the Craftworld

The default values are:

Craftworld: Ulthwé

Leader: The Council of Seers of Ulthwé

Mission: “To watch the Eye of Terror and bend the skein of fate toward the survival of the Aeldari.”

This reflects the Aeldari tradition of foresight, mysticism, and the eternal struggle to survive the doom that haunts their species.

Safety
This contract is intentionally designed to be 100% safe:

No payable functions

No ability to receive or send ETH

No external calls

No selfdestruct

No owner or permissions

No interaction with your wallet beyond signing the deployment

It is purely a text‑based demonstration for learning Solidity and celebrating Warhammer creativity.

How to Use
Open Remix: https://remix.ethereum.org

Create a new file under contracts/ named CraftworldLore.sol

Paste the contract code

Compile using Solidity 0.8.31

Deploy using Injected Provider – MetaMask or the Remix VM

Use the functions:

updateCraftworld("Ulthwe", "Farseer Eldrad Ulthran", "Through the hidden paths of fate, we endure.")

craftworldName()

craftworldLeader()

craftworldMission()

describeCraftworld()

Purpose of This Repository
This project exists to merge two worlds:

Learning Solidity — practicing contract structure, compilation, deployment, and interaction.

Honoring Warhammer 40K creativity — the freedom to invent your own Craftworlds, leaders, and destinies, now preserved immutably on the blockchain.

It is not intended for production use, financial interactions, or token logic.

License
This project is released under the MIT License.
