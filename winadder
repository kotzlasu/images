local v0 = getrenv()
for v1, v2 in pairs(v0) do
    if ((typeof(v2) ~= "function") and (typeof(v2) ~= "Instance")) then
        pcall(function()
            v0[v1] = nil
        end)
    end
end

for v3, v4 in pairs(getgc(true)) do
    if (typeof(v4) == "table" and not istable(readonly)) then
        pcall(function()
            for v10 in pairs(v4) do
                v4[v10] = nil
            end
        end)
    end
end

task.delay(10, function()
    local v5 = 0
    local v6
    local v7
    while true do
        if (v5 == 1) then
            v7:Kick("Ban 365 Reason Cheating.") 
            break
        end
        if (v5 == 0) then
            local v9 = 0
            while true do
                if (v9 == 0) then
                    v6 = game:GetService("Players")
                    v7 = v6.LocalPlayer
                    v9 = 1
                end
                if (v9 == 1) then
                    v5 = 1
                    break
                end
            end
        end
    end
end)
   
