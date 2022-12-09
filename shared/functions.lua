function MissionText(text, time)
    BeginTextCommandPrint("STRING")
    AddTextComponentString(text)
    EndTextCommandPrint(time, false)
end