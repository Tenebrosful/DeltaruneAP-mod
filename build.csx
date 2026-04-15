#load "main.csx"

switch(Data?.GeneralInfo?.DisplayName?.Content)
{
    case "DELTARUNE":
        BuildMod(0);
        return;

    case "DELTARUNE Chapter 1":
        BuildMod(1);
        return;

    case "DELTARUNE Chapter 2":
        BuildMod(2);
        return;

    case "DELTARUNE Chapter 3":
        BuildMod(3);
        return;

    case "DELTARUNE Chapter 4":
        BuildMod(4);
        return;

    case "DELTARUNE Chapter 5":
        BuildMod(5);
        return;

    case "DELTARUNE Chapter 6":
        BuildMod(6);
        return;

    case "DELTARUNE Chapter 7":
        BuildMod(7);
        return;

    default:
        ScriptError("Invalid game. Use DELTARUNE Chapter Select or DELTARUNE Chapter 1-7.");
        return;
}