Objectives = {}
Objectives.HeistStart = false
Objectives.PCToggle = false
Objectives.HeistCompleted = false

function MissionText(text, time)
    BeginTextCommandPrint("STRING")
    AddTextComponentString(text)
    EndTextCommandPrint(time, false)
end