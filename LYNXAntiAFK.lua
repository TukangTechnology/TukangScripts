local GC = getconnections or get_signal_cons
local Players = game:GetService("Players")
if GC then
    for i, v in pairs(GC(Players.LocalPlayer.Idled)) do
        if v["Disable"] then
            v["Disable"](v)
        elseif v["Disconnect"] then
            v["Disconnect"](v)
        end
    end
else
    Players.LocalPlayer.Idled:Connect(
        function()
            VirtualUser:CaptureController()
            VirtualUser:ClickButton2(Vector2.new())
        end
    )
end
