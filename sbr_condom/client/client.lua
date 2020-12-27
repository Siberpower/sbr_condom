ESX = nil



Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end

	while ESX.GetPlayerData().job == nil do
		Citizen.Wait(10)
	end

	PlayerData = ESX.GetPlayerData()
end)

RegisterNetEvent('sbr_condom:condom')
AddEventHandler('sbr_condom:condom', function(source)
    local ped = PlayerPedId()
    local armor = GetPedArmour(ped)
    local item = 'condom'
    if (armor >= 10) then
        exports['mythic_notify']:DoHudText('error', 'Zaten bi kondom takılı!')
        TriggerServerEvent('returnItem', item)
        TriggerServerEvent('condomgive', source)
        return 
    end
    
    exports['mythic_progbar']:Progress({
        name = "condom",
        duration = 10000,
        label = 'Kondom takılıyor!',
        useWhileDead = false,
        canCancel = true,
        controlDisables = {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        },
        animation = {
            animDict = "misscarsteal2peeing",
            anim = "peeing_loop",
            flags = 49,
        },
    }, function(status)
        if not status then
            AddArmourToPed(ped, Config.zirhxs)
            exports['mythic_notify']:DoHudText('success', 'Kondom takıldı.')
            level = 0
        end
    end)
end)

RegisterNetEvent('sbr_condom:condom1')
AddEventHandler('sbr_condom:condom1', function(source)
    local ped = PlayerPedId()
    local armor = GetPedArmour(ped)
    local item = 'condom1'
    if (armor >= 10) then
        exports['mythic_notify']:DoHudText('error', 'Zaten bi kondom takılı!')
        TriggerServerEvent('returnItem', item)
        TriggerServerEvent('condomgive1', source)
        return 
    end
    
    exports['mythic_progbar']:Progress({
        name = "condom",
        duration = 10000,
        label = 'Kondom takılıyor!',
        useWhileDead = false,
        canCancel = true,
        controlDisables = {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        },
        animation = {
            animDict = "misscarsteal2peeing",
            anim = "peeing_loop",
            flags = 49,
        },
    }, function(status)
        if not status then
            AddArmourToPed(ped, Config.zirhs)
            exports['mythic_notify']:DoHudText('success', 'Kondom takıldı.')
            level = 0
        end
    end)
end)

RegisterNetEvent('sbr_condom:condom2')
AddEventHandler('sbr_condom:condom2', function(source)
    local ped = PlayerPedId()
    local armor = GetPedArmour(ped)
    local item = 'condom2'
    if (armor >= 10) then
        exports['mythic_notify']:DoHudText('error', 'Zaten bi kondom takılı!')
        TriggerServerEvent('returnItem', item)
        TriggerServerEvent('condomgive2', source)
        return 
    end
    
    exports['mythic_progbar']:Progress({
        name = "condom",
        duration = 10000,
        label = 'Kondom takılıyor!',
        useWhileDead = false,
        canCancel = true,
        controlDisables = {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        },
        animation = {
            animDict = "misscarsteal2peeing",
            anim = "peeing_loop",
            flags = 49,
        },
    }, function(status)
        if not status then
            AddArmourToPed(ped, Config.zirhl)
            exports['mythic_notify']:DoHudText('success', 'Kondom takıldı.')
            level = 0
        end
    end)
end)

RegisterNetEvent('sbr_condom:condom2')
AddEventHandler('sbr_condom:condom2', function(source)
    local ped = PlayerPedId()
    local armor = GetPedArmour(ped)
    local item = 'condom2'
    if (armor >= 10) then
        exports['mythic_notify']:DoHudText('error', 'Zaten bi kondom takılı!')
        TriggerServerEvent('returnItem', item)
        TriggerServerEvent('condomgive2', source)
        return 
    end
    
    exports['mythic_progbar']:Progress({
        name = "condom",
        duration = 10000,
        label = 'Kondom takılıyor!',
        useWhileDead = false,
        canCancel = true,
        controlDisables = {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        },
        animation = {
            animDict = "misscarsteal2peeing",
            anim = "peeing_loop",
            flags = 49,
        },
    }, function(status)
        if not status then
            AddArmourToPed(ped, Config.zirhxl)
            exports['mythic_notify']:DoHudText('success', 'Kondom takıldı.')
            level = 0
        end
    end)
end)

RegisterCommand('xskondomcikart', function()
    local ped = PlayerPedId()
    local armor = GetPedArmour(ped)
    local don = 'don'
    if (armor <= 0) or (armor <= 24) or (armor > 26) then
        exports['mythic_notify']:DoHudText('error', 'Herhangi bir kondom takmamışsın!')
        return
    end

    exports['mythic_progbar']:Progress({
        name = "condomcikart",
        duration = 6000,
        label = 'Kondom çıkarılıyor',
        useWhileDead = false,
        canCancel = true,
        controlDisables = {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        },
        animation = {
            animDict = "misscarsteal2peeing",
            anim = "try_tie_positive_a",
            flags = 49,
        },
    }, function(status)
        if not status then
            SetPedArmour(ped, 0)
            TriggerServerEvent('condomcikart')
            exports['mythic_notify']:DoHudText('success', 'Kondomu çıkarttın!')
            level = 0
        end
    end)
end)

RegisterCommand('skondomcikart', function()
    local ped = PlayerPedId()
    local armor = GetPedArmour(ped)
    local don = 'don'
    if (armor <= 0) or (armor <= 49) or (armor > 51) then
        exports['mythic_notify']:DoHudText('error', 'Herhangi bir kondom takmamışsın!')
        return
    end

    exports['mythic_progbar']:Progress({
        name = "condomcikart1",
        duration = 6000,
        label = 'Kondom çıkarılıyor!',
        useWhileDead = false,
        canCancel = true,
        controlDisables = {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        },
        animation = {
            animDict = "misscarsteal2peeing",
            anim = "peeing_loop",
            flags = 49,
        },
    }, function(status)
        if not status then
            SetPedArmour(ped, 0)
            TriggerServerEvent('condomcikart1')
            exports['mythic_notify']:DoHudText('success', 'Kondomu çıkarttın!!')
            level = 0
        end
    end)
end)

RegisterCommand('lkondomcikart', function()
    local ped = PlayerPedId()
    local armor = GetPedArmour(ped)
    local don = 'don'
    if (armor <= 0) or (armor <= 74) or (armor > 76) then
        exports['mythic_notify']:DoHudText('error', 'Herhangi bir kondom takmamışsın!')
        return
    end

    exports['mythic_progbar']:Progress({
        name = "condomcikart2",
        duration = 6000,
        label = 'Kondom çıkarılıyor!',
        useWhileDead = false,
        canCancel = true,
        controlDisables = {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        },
        animation = {
            animDict = "misscarsteal2peeing",
            anim = "peeing_loop",
            flags = 49,
        },
    }, function(status)
        if not status then
            SetPedArmour(ped, 0)
            TriggerServerEvent('condomcikart2')
            exports['mythic_notify']:DoHudText('success', 'Kondomu çıkarttın!!')
            level = 0
        end
    end)
end)

RegisterCommand('xlkondomcikart', function()
    local ped = PlayerPedId()
    local armor = GetPedArmour(ped)
    local don = 'don'
    if (armor <= 0) or (armor <= 99) then
        exports['mythic_notify']:DoHudText('error', 'Herhangi bir kondom takmamışsın!')
        return
    end

    exports['mythic_progbar']:Progress({
        name = "condomcikart3",
        duration = 6000,
        label = 'Kondom çıkarılıyor!',
        useWhileDead = false,
        canCancel = true,
        controlDisables = {
            disableMovement = true,
            disableCarMovement = true,
            disableMouse = false,
            disableCombat = true,
        },
        animation = {
            animDict = "misscarsteal2peeing",
            anim = "peeing_loop",
            flags = 49,
        },,
    }, function(status)
        if not status then
            SetPedArmour(ped, 0)
            TriggerServerEvent('condomcikart3')
            exports['mythic_notify']:DoHudText('success', 'Kondomu çıkarttın!!')
            level = 0
        end
    end)
end)


-- Alt taraf düzenlenicek şimdilik böyle kalsın


--RegisterCommand('kondomcikart', function()
  --  local furkangotten = exports["reload-skillbar"]:taskBar(4000,math.random(5,15))
    --      furkangotten  ~= 100 then
    --end)

