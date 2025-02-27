--Luctus Jobranks
--Made by OverlordAkise
luctus_jobranks = {}

--CONFIG START HERE

--Chat commands always work "<command> <name of target>"
LUCTUS_JOBRANKS_RANKUP_CMD = "!promote"
LUCTUS_JOBRANKS_RANKDOWN_CMD = "!demote"
--ADMIN commands allows admins to rankup others no matter their current job
LUCTUS_JOBRANKS_RANKUP_ADMIN_CMD = "!apromote"
LUCTUS_JOBRANKS_RANKDOWN_ADMIN_CMD = "!ademote"
--

--Explanation:

--1   "[R]",          The short name infront of your Player name
--2   "Rekrut",       The long name behind your Job name
--3   false,          If the rank can up / downrank other players
--4   {"m9k_mp5sd"},  What weapons the rank spawns with
--5   15              Custom Salary (added ontop of base job salary)

--An Example:
luctus_jobranks["Citizen"] = {
    [1] = {"[R]", "Rekrut",false,{"guthscp_keycard_lvl_2","m9k_mp5sd"},15},
    [2] = {"[P]", "Private",false,{"guthscp_keycard_lvl_3","m9k_mp5sd"},20},
    [3] = {"[C]", "Corporal",false,{"guthscp_keycard_lvl_3","m9k_mp5sd"},25},
    [4] = {"[SGT]", "Seargent",false,{"guthscp_keycard_lvl_3","m9k_m4a1"},30},
    [5] = {"[L]", "Leader",false,{"guthscp_keycard_lvl_3","m9k_m4a1"},45},
    [6] = {"[WC]", "Watchcommander",true,{"guthscp_keycard_lvl_3","m9k_m16a4_acog"},60},
    [7] = {"[Chief]", "Chief",true,{"guthscp_keycard_lvl_4","m9k_m16a4_acog"},100}
}

--Required/Mandatory are only the first 2 things: Short-Name and Long-Name
--This is also valid:
luctus_jobranks["Hobo"] = {
    [1] = {"[LCOL]", "Lieutenant Colonel"},
    [2] = {"[COL]", "Colonel",true}
}

--You can also copy rankconfigs, but the ranks of players will NOT copy over! Only the config gets copied!
luctus_jobranks["Medic"] = luctus_jobranks["Hobo"]


--CONFIG END HERE

print("[luctus_jobranks] Config loaded!")
