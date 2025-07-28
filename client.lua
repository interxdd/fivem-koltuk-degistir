RegisterCommand("koltuk", function(source, args)
    local ped = PlayerPedId()
    local vehicle = GetVehiclePedIsIn(ped, false)

    if not IsPedInAnyVehicle(ped, false) then
        TriggerEvent('chat:addMessage', {
            args = { "^1Hata:", "Bir aracın içinde olmalısın." }
        })
        return
    end

    -- Eğer argüman yoksa bilgi mesajı ver
    if args[1] == nil then
        TriggerEvent('chat:addMessage', {
            args = {
                "^3Koltuk Seçimi:",
                "1 = Sürücü, 2 = Sağ Ön, 3 = Arka Sol, 4 = Arka Sağ"
            }
        })
        return
    end

    local userInput = tonumber(args[1])
    if userInput == nil or userInput < 1 or userInput > 6 then
        TriggerEvent('chat:addMessage', {
            args = {
                "^1Kullanım Hatalı:",
                "/koltuk [1-6] → 1: sürücü, 2: sağ ön, 3: arka sol, 4: arka sağ"
            }
        })
        return
    end

    -- Oyuncunun yazdığı değeri gerçek koltuk indexine çevir
    local seatIndex = userInput - 2  -- 1 → -1 (sürücü), 2 → 0, 3 → 1, vs.

    -- Koltuk boşsa otur
    if IsVehicleSeatFree(vehicle, seatIndex) then
        TaskWarpPedIntoVehicle(ped, vehicle, seatIndex)
    else
        TriggerEvent('chat:addMessage', {
            args = { "^1Hata:", "Bu koltuk dolu." }
        })
    end
end, false)
