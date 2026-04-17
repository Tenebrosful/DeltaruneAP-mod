#load "main.csx"

switch(Data?.GeneralInfo?.DisplayName?.Content)
{
    case "DELTARUNE":
        BuildModRoomsOnly(0);
        return;

    case "DELTARUNE Chapter 1":
        BuildModRoomsOnly(1);
        return;

    case "DELTARUNE Chapter 2":
        BuildModRoomsOnly(2);
        return;

    case "DELTARUNE Chapter 3":
        BuildModRoomsOnly(3);
        return;

    case "DELTARUNE Chapter 4":
        BuildModRoomsOnly(4);
        return;

    case "DELTARUNE Chapter 5":
        BuildModRoomsOnly(5);
        return;

    case "DELTARUNE Chapter 6":
        BuildModRoomsOnly(6);
        return;

    case "DELTARUNE Chapter 7":
        BuildModRoomsOnly(7);
        return;

    default:
        ScriptError("Invalid game. Use DELTARUNE Chapter Select or DELTARUNE Chapter 1-7.");
        return;
}