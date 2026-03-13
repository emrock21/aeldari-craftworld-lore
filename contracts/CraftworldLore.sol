// SPDX-License-Identifier: MIT
pragma solidity 0.8.31;

/// @title Aeldari Craftworld Lore – pure text, no funds, no wallet interaction
/// @notice Stores the name of a Craftworld, its current leader, and its mission.
/// @dev No payable functions, no selfdestruct, no external calls.

contract CraftworldLore {

    /// @notice Name of the Craftworld.
    string public craftworldName;

    /// @notice Current leader or ruling body of the Craftworld.
    string public craftworldLeader;

    /// @notice Mission or guiding purpose of the Craftworld.
    string public craftworldMission;

    /// @notice Emitted whenever someone updates the Craftworld lore.
    event CraftworldUpdated(
        address indexed by,
        string newCraftworld,
        string newLeader,
        string newMission
    );

    constructor() {
        // Default: Ulthwé, the Doom of Eldanesh
        craftworldName = "Ulthwe";
        craftworldLeader = "The Council of Seers of Ulthwe";
        craftworldMission = "To watch the Eye of Terror and bend the skein of fate toward the survival of the Aeldari.";
    }

    /// @notice Update the Craftworld name, leader, and mission.
    /// @dev Anyone can call this; it only updates text.
    /// @param newCraftworld The new Craftworld name.
    /// @param newLeader The new leader or ruling body.
    /// @param newMission The new mission or purpose.
    function updateCraftworld(
        string calldata newCraftworld,
        string calldata newLeader,
        string calldata newMission
    ) external {
        craftworldName = newCraftworld;
        craftworldLeader = newLeader;
        craftworldMission = newMission;

        emit CraftworldUpdated(msg.sender, newCraftworld, newLeader, newMission);
    }

    /// @notice Returns a combined lore description.
    /// @return description A single string summarizing the Craftworld, its leader, and mission.
    function describeCraftworld() external view returns (string memory description) {
        description = string(
            abi.encodePacked(
                "Craftworld: ",
                craftworldName,
                ". Leader: ",
                craftworldLeader,
                ". Mission: ",
                craftworldMission
            )
        );
    }
}
