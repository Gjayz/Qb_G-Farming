local QBCore = exports['qb-core']:GetCoreObject()


-- animetion
local function loadAnimDict(dict)
    while (not HasAnimDictLoaded(dict)) do
        RequestAnimDict(dict)
        Wait(0)
    end
end


--selerStone, Carfting and jewelry Ped
Citizen.CreateThread(function()
  for k, v in pairs(Config.PedLocation) do
  local modelHash = GetHashKey(v.model)
  RequestModel(modelHash) 
  while ( not HasModelLoaded(modelHash) ) do
      Wait(1)
  end
  local ped = CreatePed(1, modelHash, v.coords, false, true)
  SetEntityInvincible(ped, true)
  SetBlockingOfNonTemporaryEvents(ped, true) 
  TaskStartScenarioInPlace(ped, v.scenario, -1, true) 
  -- FreezeEntityPosition(ped, true)
  end
end)
----
if Config.UseBlips then
  Citizen.CreateThread(function()
    -- All Blips
      for k, v in pairs(Config.Allblips) do
          local AllBlip = AddBlipForCoord(v.coords)
          SetBlipSprite(AllBlip, v.SetBlipSprite)
          SetBlipDisplay(AllBlip, v.SetBlipDisplay)
          SetBlipScale(AllBlip, v.SetBlipScale)
          SetBlipColour(AllBlip, v.SetBlipColour)
          SetBlipAsShortRange(AllBlip, true)
          BeginTextCommandSetBlipName("STRING")
          AddTextComponentString(v.BlipName)
          EndTextCommandSetBlipName(AllBlip)
      end

      -- Farm Zone
      for k, v in pairs(Config.ZoneGarden) do
        local GardenLocation = PolyZone:Create(v.zones, {
        name = v.label,
        minZ = v.minz,
        maxZ = v.maxz,
        debugPoly = false
        })
        GardenLocation:onPlayerInOut(function(isPointInside)
          if isPointInside then
              inZone = true
              TriggerEvent('Tomatoes')
              TriggerEvent('Rices')
              TriggerEvent('Pepper')
              TriggerEvent('EggPlant')
              TriggerEvent('Mango')
              TriggerEvent('Orange')
              TriggerEvent('Apple')
              TriggerEvent('Gauva')
              TriggerEvent('Grapes')
          else
            for _, v in pairs(Config.TomatoFields) do
              exports['qb-target']:RemoveZone(v.Name)
              inZone = false
            end
            for _, v in pairs(Config.RiceFields) do
              exports['qb-target']:RemoveZone(v.Name)
              inZone = false
            end
            for _, v in pairs(Config.PepperFields) do
              exports['qb-target']:RemoveZone(v.Name)
              inZone = false
            end
            for _, v in pairs(Config.EggplantFields) do
              exports['qb-target']:RemoveZone(v.Name)
              inZone = false
            end
            for _, v in pairs(Config.MangoFields) do
              exports['qb-target']:RemoveZone(v.Name)
              inZone = false
            end
            for _, v in pairs(Config.OrangeFields) do
              exports['qb-target']:RemoveZone(v.Name)
              inZone = false
            end
            for _, v in pairs(Config.AppleFields) do
              exports['qb-target']:RemoveZone(v.Name)
              inZone = false
            end
            for _, v in pairs(Config.GauvaFields) do
              exports['qb-target']:RemoveZone(v.Name)
              inZone = false
            end
            for _, v in pairs(Config.GrapesFields) do
              exports['qb-target']:RemoveZone(v.Name)
              inZone = false
            end
          end
        end)
      end
  end)
end

 -- Target Tomato
 RegisterNetEvent('Tomatoes')
 AddEventHandler('Tomatoes', function()
     for _, v in pairs(Config.TomatoFields) do
       exports['qb-target']:AddBoxZone(v.Name, vector3(v.Coords.x, v.Coords.y, v.Coords.z), v.length, v.width, {
         name=v.Name,
         heading= v.heading,
         debugPoly=false,
         minZ = v.minZ,
         maxZ = v.maxZ,
       },{
         options = {
             {
               type = "client",
               event = "qb-farming:client:StartfarmTomato",
               icon = "fa fa-sign-language",
               label = "Pick From Garden",
             },
           },
         distance = v.distance,
       })
     end
 end)
 -- Target Rice
 RegisterNetEvent('Rices')
 AddEventHandler('Rices', function()
     for _, v in pairs(Config.RiceFields) do
       exports['qb-target']:AddBoxZone(v.Name, vector3(v.Coords.x, v.Coords.y, v.Coords.z), v.length, v.width, {
         name=v.Name,
         heading= v.heading,
         debugPoly=false,
         minZ = v.minZ,
         maxZ = v.maxZ,
       },{
         options = {
             {
               type = "client",
               event = "qb-farming:client:StartfarmRice",
               icon = "fa fa-sign-language",
               label = "Pick From Garden",
             },
           },
         distance = v.distance,
       })
     end
 end)
 -- Target Pepper
 RegisterNetEvent('Pepper')
 AddEventHandler('Pepper', function()
     for _, v in pairs(Config.PepperFields) do
       exports['qb-target']:AddBoxZone(v.Name, vector3(v.Coords.x, v.Coords.y, v.Coords.z), v.length, v.width, {
         name=v.Name,
         heading= v.heading,
         debugPoly=false,
         minZ = v.minZ,
         maxZ = v.maxZ,
       },{
         options = {
             {
               type = "client",
               event = "qb-farming:client:StartfarmPepper",
               icon = "fa fa-sign-language",
               label = "Pick From Garden",
             },
           },
         distance = v.distance,
       })
     end
 end)
 -- Target Eggplant
 RegisterNetEvent('EggPlant')
 AddEventHandler('EggPlant', function()
     for _, v in pairs(Config.EggplantFields) do
       exports['qb-target']:AddBoxZone(v.Name, vector3(v.Coords.x, v.Coords.y, v.Coords.z), v.length, v.width, {
         name=v.Name,
         heading= v.heading,
         debugPoly=false,
         minZ = v.minZ,
         maxZ = v.maxZ,
       },{
         options = {
             {
               type = "client",
               event = "qb-farming:client:StartfarmEggplant",
               icon = "fa fa-sign-language",
               label = "Pick From Garden",
             },
           },
         distance = v.distance,
       })
     end
 end)
 -- Target Mango
 RegisterNetEvent('Mango')
 AddEventHandler('Mango', function()
     for _, v in pairs(Config.MangoFields) do
       exports['qb-target']:AddBoxZone(v.Name, vector3(v.Coords.x, v.Coords.y, v.Coords.z), v.length, v.width, {
         name=v.Name,
         heading= v.heading,
         debugPoly=false,
         minZ = v.minZ,
         maxZ = v.maxZ,
       },{
         options = {
             {
               type = "client",
               event = "qb-farming:client:StartfarmMango",
               icon = "fa fa-sign-language",
               label = "Pick From Garden",
             },
           },
         distance = v.distance,
       })
     end
 end)
 -- Target Orange
 RegisterNetEvent('Orange')
 AddEventHandler('Orange', function()
     for _, v in pairs(Config.OrangeFields) do
       exports['qb-target']:AddBoxZone(v.Name, vector3(v.Coords.x, v.Coords.y, v.Coords.z), v.length, v.width, {
         name=v.Name,
         heading= v.heading,
         debugPoly=false,
         minZ = v.minZ,
         maxZ = v.maxZ,
       },{
         options = {
             {
               type = "client",
               event = "qb-farming:client:StartfarmOrange",
               icon = "fa fa-sign-language",
               label = "Pick From Garden",
             },
           },
         distance = v.distance,
       })
     end
 end)
 -- Target Apple
 RegisterNetEvent('Apple')
 AddEventHandler('Apple', function()
     for _, v in pairs(Config.AppleFields) do
       exports['qb-target']:AddBoxZone(v.Name, vector3(v.Coords.x, v.Coords.y, v.Coords.z), v.length, v.width, {
         name=v.Name,
         heading= v.heading,
         debugPoly=false,
         minZ = v.minZ,
         maxZ = v.maxZ,
       },{
         options = {
             {
               type = "client",
               event = "qb-farming:client:StartfarmApple",
               icon = "fa fa-sign-language",
               label = "Pick From Garden",
             },
           },
         distance = v.distance,
       })
     end
 end)
 -- Target Gauva
 RegisterNetEvent('Gauva')
 AddEventHandler('Gauva', function()
     for _, v in pairs(Config.GauvaFields) do
       exports['qb-target']:AddBoxZone(v.Name, vector3(v.Coords.x, v.Coords.y, v.Coords.z), v.length, v.width, {
         name=v.Name,
         heading= v.heading,
         debugPoly=false,
         minZ = v.minZ,
         maxZ = v.maxZ,
       },{
         options = {
             {
               type = "client",
               event = "qb-farming:client:StartfarmGauva",
               icon = "fa fa-sign-language",
               label = "Pick From Garden",
             },
           },
         distance = v.distance,
       })
     end
 end)
 -- Target Grapes
 RegisterNetEvent('Grapes')
 AddEventHandler('Grapes', function()
     for _, v in pairs(Config.GrapesFields) do
       exports['qb-target']:AddBoxZone(v.Name, vector3(v.Coords.x, v.Coords.y, v.Coords.z), v.length, v.width, {
         name=v.Name,
         heading= v.heading,
         debugPoly=false,
         minZ = v.minZ,
         maxZ = v.maxZ,
       },{
         options = {
             {
               type = "client",
               event = "qb-farming:client:StartfarmGrapes",
               icon = "fa fa-sign-language",
               label = "Pick From Garden",
             },
           },
         distance = v.distance,
       })
     end
 end)

-- Start Farm Tomato
RegisterNetEvent('qb-farming:client:StartfarmTomato')
AddEventHandler('qb-farming:client:StartfarmTomato', function(args)
    local animDict = "missmechanic"
    local animName = "work_base"
    local trClassic = PlayerPedId() 
    isFarm = true
    FreezeEntityPosition(trClassic, true)   
    QBCore.Functions.Progressbar("Job Progress", Lang:t("label.Tamatostart"), 2000, false, true, { disableMovement = true, disableCarMovement = true, disableMouse = false, disableCombat = true,}, {}, {}, {}, function() --done
        TriggerServerEvent('qb-farming:server:TomatoRewards')
        TaskPlayAnim(trClassic, animDict, "exit", 3.0, 3.0, -1, 2, 0, 0, 0, 0)
        FreezeEntityPosition(trClassic, false)
        isFarm = false
    end, function()
        TaskPlayAnim(trClassic, animDict, "exit", 3.0, 3.0, -1, 2, 0, 0, 0, 0)
        FreezeEntityPosition(trClassic, false)
        isFarm = false
    end)
    CreateThread(function()
      while isFarm do
          loadAnimDict(animDict)
          TaskPlayAnim(trClassic, animDict, animName, 3.0, 3.0, -1, 2, 0, 0, 0, 0 )
          FreezeEntityPosition(trClassic, false)
          Wait(2000)
      end
  end)
end)
-- Start Farm Rice
RegisterNetEvent('qb-farming:client:StartfarmRice')
AddEventHandler('qb-farming:client:StartfarmRice', function(args)
    local animDict = "amb@world_human_gardener_plant@male@idle_a"
    local animName = "idle_b"
    local trClassic = PlayerPedId() 
    isFarm = true
    FreezeEntityPosition(trClassic, true)   
    QBCore.Functions.Progressbar("Job Progress", Lang:t("label.Ricestart"), 4000, false, true, { disableMovement = true, disableCarMovement = true, disableMouse = false, disableCombat = true,}, {}, {}, {}, function() --done
        TriggerServerEvent('qb-farming:server:RiceRewards')
        TaskPlayAnim(trClassic, animDict, "exit", 3.0, 3.0, -1, 2, 0, 0, 0, 0)
        FreezeEntityPosition(trClassic, false)
        isFarm = false
    end, function()
        TaskPlayAnim(trClassic, animDict, "exit", 3.0, 3.0, -1, 2, 0, 0, 0, 0)
        FreezeEntityPosition(trClassic, false)
        isFarm = false
    end)
    CreateThread(function()
      while isFarm do
          loadAnimDict(animDict)
          TaskPlayAnim(trClassic, animDict, animName, 3.0, 3.0, -1, 2, 0, 0, 0, 0 )
          FreezeEntityPosition(trClassic, false)
          Wait(4000)
      end
  end)
end)

-- Start Farm Pepper
RegisterNetEvent('qb-farming:client:StartfarmPepper')
AddEventHandler('qb-farming:client:StartfarmPepper', function(args)
    local animDict = "missmechanic"
    local animName = "work_base"
    local trClassic = PlayerPedId() 
    isFarm = true
    FreezeEntityPosition(trClassic, true)   
    QBCore.Functions.Progressbar("Job Progress", Lang:t("label.Pepperstart"), 2000, false, true, { disableMovement = true, disableCarMovement = true, disableMouse = false, disableCombat = true,}, {}, {}, {}, function() --done
        TriggerServerEvent('qb-farming:server:PepperRewards')
        TaskPlayAnim(trClassic, animDict, "exit", 3.0, 3.0, -1, 2, 0, 0, 0, 0)
        FreezeEntityPosition(trClassic, false)
        isFarm = false
    end, function()
        TaskPlayAnim(trClassic, animDict, "exit", 3.0, 3.0, -1, 2, 0, 0, 0, 0)
        FreezeEntityPosition(trClassic, false)
        isFarm = false
    end)
    CreateThread(function()
      while isFarm do
          loadAnimDict(animDict)
          TaskPlayAnim(trClassic, animDict, animName, 3.0, 3.0, -1, 2, 0, 0, 0, 0 )
          FreezeEntityPosition(trClassic, false)
          Wait(2000)
      end
  end)
end)
--Start Farm Eggplant
RegisterNetEvent('qb-farming:client:StartfarmEggplant')
AddEventHandler('qb-farming:client:StartfarmEggplant', function(args)
  local animDict = "missmechanic"
  local animName = "work_base"
  local trClassic = PlayerPedId() 
  isFarm = true
  FreezeEntityPosition(trClassic, true)   
  QBCore.Functions.Progressbar("Job Progress", Lang:t("label.Eggplantstart"), 2000, false, true, { disableMovement = true, disableCarMovement = true, disableMouse = false, disableCombat = true,}, {}, {}, {}, function() --done
      TriggerServerEvent('qb-farming:server:EggplantRewards')
      TaskPlayAnim(trClassic, animDict, "exit", 3.0, 3.0, -1, 2, 0, 0, 0, 0)
      FreezeEntityPosition(trClassic, false)
      isFarm = false
  end, function()
      TaskPlayAnim(trClassic, animDict, "exit", 3.0, 3.0, -1, 2, 0, 0, 0, 0)
      FreezeEntityPosition(trClassic, false)
      isFarm = false
  end)
  CreateThread(function()
    while isFarm do
        loadAnimDict(animDict)
        TaskPlayAnim(trClassic, animDict, animName, 3.0, 3.0, -1, 2, 0, 0, 0, 0 )
        FreezeEntityPosition(trClassic, false)
        Wait(2000)
    end
  end)
end)

-- Start Farm Mango
RegisterNetEvent('qb-farming:client:StartfarmMango')
AddEventHandler('qb-farming:client:StartfarmMango', function(args)
    local animDict = "amb@prop_human_movie_bulb@base"
    local animName = "base"
    local trClassic = PlayerPedId() 
    isFarm = true
    FreezeEntityPosition(trClassic, true)   
    QBCore.Functions.Progressbar("Job Progress", Lang:t("label.Mangostart"), 2000, false, true, { disableMovement = true, disableCarMovement = true, disableMouse = false, disableCombat = true,}, {}, {}, {}, function() --done
        TriggerServerEvent('qb-farming:server:MangoRewards')
        TaskPlayAnim(trClassic, animDict, "exit", 3.0, 3.0, -1, 2, 0, 0, 0, 0)
        FreezeEntityPosition(trClassic, false)
        isFarm = false
    end, function()
        TaskPlayAnim(trClassic, animDict, "exit", 3.0, 3.0, -1, 2, 0, 0, 0, 0)
        FreezeEntityPosition(trClassic, false)
        isFarm = false
    end)
    CreateThread(function()
      while isFarm do
          loadAnimDict(animDict)
          TaskPlayAnim(trClassic, animDict, animName, 3.0, 3.0, -1, 2, 0, 0, 0, 0 )
          FreezeEntityPosition(trClassic, false)
          Wait(2000)
      end
  end)
end)

-- Start Farm Orange
RegisterNetEvent('qb-farming:client:StartfarmOrange')
AddEventHandler('qb-farming:client:StartfarmOrange', function(args)
    local animDict = "amb@prop_human_movie_bulb@base"
    local animName = "base"
    local trClassic = PlayerPedId() 
    isFarm = true
    FreezeEntityPosition(trClassic, true)   
    QBCore.Functions.Progressbar("Job Progress", Lang:t("label.Orangestart"), 2000, false, true, { disableMovement = true, disableCarMovement = true, disableMouse = false, disableCombat = true,}, {}, {}, {}, function() --done
        TriggerServerEvent('qb-farming:server:OrangeRewards')
        TaskPlayAnim(trClassic, animDict, "exit", 3.0, 3.0, -1, 2, 0, 0, 0, 0)
        FreezeEntityPosition(trClassic, false)
        isFarm = false
    end, function()
        TaskPlayAnim(trClassic, animDict, "exit", 3.0, 3.0, -1, 2, 0, 0, 0, 0)
        FreezeEntityPosition(trClassic, false)
        isFarm = false
    end)
    CreateThread(function()
      while isFarm do
          loadAnimDict(animDict)
          TaskPlayAnim(trClassic, animDict, animName, 3.0, 3.0, -1, 2, 0, 0, 0, 0 )
          FreezeEntityPosition(trClassic, false)
          Wait(2000)
      end
  end)
end)


-- Start Farm Apple
RegisterNetEvent('qb-farming:client:StartfarmApple')
AddEventHandler('qb-farming:client:StartfarmApple', function(args)
    local animDict = "amb@prop_human_movie_bulb@base"
    local animName = "base"
    local trClassic = PlayerPedId() 
    isFarm = true
    FreezeEntityPosition(trClassic, true)   
    QBCore.Functions.Progressbar("Job Progress", Lang:t("label.Applestart"), 2000, false, true, { disableMovement = true, disableCarMovement = true, disableMouse = false, disableCombat = true,}, {}, {}, {}, function() --done
        TriggerServerEvent('qb-farming:server:AppleRewards')
        TaskPlayAnim(trClassic, animDict, "exit", 3.0, 3.0, -1, 2, 0, 0, 0, 0)
        FreezeEntityPosition(trClassic, false)
        isFarm = false
    end, function()
        TaskPlayAnim(trClassic, animDict, "exit", 3.0, 3.0, -1, 2, 0, 0, 0, 0)
        FreezeEntityPosition(trClassic, false)
        isFarm = false
    end)
    CreateThread(function()
      while isFarm do
          loadAnimDict(animDict)
          TaskPlayAnim(trClassic, animDict, animName, 3.0, 3.0, -1, 2, 0, 0, 0, 0 )
          FreezeEntityPosition(trClassic, false)
          Wait(2000)
      end
  end)
end)

-- Start Farm Gauva
RegisterNetEvent('qb-farming:client:StartfarmGauva')
AddEventHandler('qb-farming:client:StartfarmGauva', function(args)
    local animDict = "amb@prop_human_movie_bulb@base"
    local animName = "base"
    local trClassic = PlayerPedId() 
    isFarm = true
    FreezeEntityPosition(trClassic, true)   
    QBCore.Functions.Progressbar("Job Progress", Lang:t("label.Gauvastart"), 2000, false, true, { disableMovement = true, disableCarMovement = true, disableMouse = false, disableCombat = true,}, {}, {}, {}, function() --done
        TriggerServerEvent('qb-farming:server:GauvaRewards')
        TaskPlayAnim(trClassic, animDict, "exit", 3.0, 3.0, -1, 2, 0, 0, 0, 0)
        FreezeEntityPosition(trClassic, false)
        isFarm = false
    end, function()
        TaskPlayAnim(trClassic, animDict, "exit", 3.0, 3.0, -1, 2, 0, 0, 0, 0)
        FreezeEntityPosition(trClassic, false)
        isFarm = false
    end)
    CreateThread(function()
      while isFarm do
          loadAnimDict(animDict)
          TaskPlayAnim(trClassic, animDict, animName, 3.0, 3.0, -1, 2, 0, 0, 0, 0 )
          FreezeEntityPosition(trClassic, false)
          Wait(2000)
      end
  end)
end)

-- Start Farm Grapes
RegisterNetEvent('qb-farming:client:StartfarmGrapes')
AddEventHandler('qb-farming:client:StartfarmGrapes', function(args)
    local animDict = "missmechanic"
    local animName = "work_base"
    local trClassic = PlayerPedId() 
    isFarm = true
    FreezeEntityPosition(trClassic, true)   
    QBCore.Functions.Progressbar("Job Progress", Lang:t("label.Grapesstart"), 2000, false, true, { disableMovement = true, disableCarMovement = true, disableMouse = false, disableCombat = true,}, {}, {}, {}, function() --done
        TriggerServerEvent('qb-farming:server:GrapesRewards')
        TaskPlayAnim(trClassic, animDict, "exit", 3.0, 3.0, -1, 2, 0, 0, 0, 0)
        FreezeEntityPosition(trClassic, false)
        isFarm = false
    end, function()
        TaskPlayAnim(trClassic, animDict, "exit", 3.0, 3.0, -1, 2, 0, 0, 0, 0)
        FreezeEntityPosition(trClassic, false)
        isFarm = false
    end)
    CreateThread(function()
      while isFarm do
          loadAnimDict(animDict)
          TaskPlayAnim(trClassic, animDict, animName, 3.0, 3.0, -1, 2, 0, 0, 0, 0 )
          FreezeEntityPosition(trClassic, false)
          Wait(2000)
      end
  end)
end)

-- Sell Animation
RegisterNetEvent('qb-farming:client:StartSell')
AddEventHandler('qb-farming:client:StartSell', function(src)
  local animDict = "mp_common"
  local animName = "givetake2_a"
  local trClassic = PlayerPedId() 
  isSell = true
  FreezeEntityPosition(trClassic, true)   
  QBCore.Functions.Progressbar("Job Progress", Lang:t("label.FoodSell"), 2000, false, true, { disableMovement = true, disableCarMovement = true, disableMouse = false, disableCombat = true,}, {}, {}, {}, function() --done
      TaskPlayAnim(trClassic, animDict, "exit", 3.0, 3.0, -1, 2, 0, 0, 0, 0)
      FreezeEntityPosition(trClassic, false)
      isSell = false
  end, function()
      TaskPlayAnim(trClassic, animDict, "exit", 3.0, 3.0, -1, 2, 0, 0, 0, 0)
      FreezeEntityPosition(trClassic, false)
      isSell = false
  end)
  CreateThread(function()
    while isSell do
        loadAnimDict(animDict)
        TaskPlayAnim(trClassic, animDict, animName, 3.0, 3.0, -1, 2, 0, 0, 0, 0 )
        FreezeEntityPosition(trClassic, false)
        Wait(2000)
    end
  end)
end)
-- Make Animation
RegisterNetEvent('qb-farming:client:StartMake')
AddEventHandler('qb-farming:client:StartMake', function(src)
  local animDict = "missfam4"
  local animName = "base"
  local trClassic = PlayerPedId() 
  FreezeEntityPosition(trClassic, true)   
  TriggerEvent('animations:client:EmoteCommandStart', {"Clipboard"})
  QBCore.Functions.Progressbar("Job Progress", Lang:t("label.MakeProduct"), 2000, false, true, { disableMovement = true, disableCarMovement = true, disableMouse = false, disableCombat = true,}, {}, {}, {}, function() --done
      TaskPlayAnim(trClassic, animDict, "exit", 3.0, 3.0, -1, 2, 0, 0, 0, 0)
      TriggerEvent('animations:client:EmoteCommandStart', {"c"})
      FreezeEntityPosition(trClassic, false)
  end, function()
    ClearPedTasks(trClassic)
      TaskPlayAnim(trClassic, animDict, "exit", 3.0, 3.0, -1, 2, 0, 0, 0, 0)
      FreezeEntityPosition(trClassic, false)
  end)
end)


-- --Target
CreateThread(function()
  ---Food Maker and Sell
  exports["qb-target"]:AddBoxZone("ProductMakerAndSell", vector3(2588.19, 3167.76, 50.99),  0.8, 1,{
    name = "FoodMakerAndSell",
    heading = 50,
    debugPoly = false,
    minZ=48.39,
    maxZ=52.39
    }, {
        options = { 
          {
            ---Sell
            type = "client",
            event = "qb-farmming:client:MenuListSell",
            icon = "fa-solid fa-bowl-food",
            label = Lang:t("label.FoodSell"),
          },
          {
            -- Processs
            type = "client",
            event = "qb-farmming:client:MenuListProductMaker",
            icon = "fa-solid fa-bowl-food",
            label = Lang:t("label.FoodMaker"),
          }
        
        },
        distance = 1.8
    })

  -- Sell Product
  exports["qb-target"]:AddBoxZone("Product Sell", vector3(83.92, 190.82, 105.26), 0.8, 1,{
    name = "Product Sell",
    heading = 65,
    debugPoly = false,
    minZ = 102.06,
    maxZ = 106.06,
    }, {
        options = { 
          {
            type = "client",
            event = "qb-farmming:client:MenuProductSellList",
            icon = "fa-brands fa-product-hunt",
            label = Lang:t("label.ProductSell"),
          }
        },
        distance = 1.8
    })

end)
-- All Make Product Menu
RegisterNetEvent('qb-farmming:client:MenuListProductMaker')
AddEventHandler('qb-farmming:client:MenuListProductMaker', function(src)
  local MuneProductMeker = {
    {
      header = "Food Maker List Menu",
      icon = 'fa-solid fa-bowl-food',
      isMenuHeader = true
    },
    {
        header = "Make",
        txt = "Make Product "..Config.Tomato,
        icon = "fa-solid fa-store",
        params = {
        event = "qb-farmming:client:TomatoMakeList",
        }
    },
    {
      header = "Make",
      txt = "Make Product "..Config.Rice,
      icon = "fa-solid fa-store",
      params = {
      event = "qb-farmming:client:RiceMakeList",
      }
    },
    {
      header = "Make",
      txt = "Make Product "..Config.Pepper,
      icon = "fa-solid fa-store",
      params = {
      event = "qb-farmming:client:PepperMakeList",
      }
    },
    {
      header = "Make",
      txt = "Make Product "..Config.Eggplant,
      icon = "fa-solid fa-store",
      params = {
      event = "qb-farmming:client:EggplantMakeList",
      }
    },
    {
      header = "Make",
      txt = "Make Product "..Config.Mango,
      icon = "fa-solid fa-store",
      params = {
      event = "qb-farmming:client:MangoMakeList",
      }
    },
    {
      header = "Make",
      txt = "Make Product "..Config.Orange,
      icon = "fa-solid fa-store",
      params = {
      event = "qb-farmming:client:OrangeMakeList",
      }
    },
    {
      header = "Make",
      txt = "Make Product "..Config.Apple,
      icon = "fa-solid fa-store",
      params = {
      event = "qb-farmming:client:AppleMakeList",
      }
    },
    {
      header = "Make",
      txt = "Make Product "..Config.Gauva,
      icon = "fa-solid fa-store",
      params = {
      event = "qb-farmming:client:GauvaMakeList",
      }
    },
    {
      header = "Make",
      txt = "Make Product "..Config.Grapes,
      icon = "fa-solid fa-store",
      params = {
      event = "qb-farmming:client:GrapesMakeList",
      }
    },
    {
        header = "Close",
        txt = "",
        params = {
            event = "qb-menu:closeMenu"
        }
    },
  }
exports['qb-menu']:openMenu(MuneProductMeker)
end)
-- All Sell
RegisterNetEvent('qb-farmming:client:MenuListSell')
AddEventHandler('qb-farmming:client:MenuListSell', function(src)
  local MuneSell = {
    {
      header = "Food Sell Menu",
      icon = 'fa-solid fa-bowl-food',
      isMenuHeader = true
    },
    {
        header = "Sell",
        txt = "Sell "..Config.Tomato,
        icon = "fa-regular fa-money-bill-1",
        params = {
        isServer = true,
        event = "qb-farming:server:Sell",
        args = 1
        }
    },
    {
      header = "Sell",
      txt = "Sell "..Config.Rice,
      icon = "fa-regular fa-money-bill-1",
      params = {
      isServer = true,
      event = "qb-farming:server:Sell",
      args = 2
      }
    },
    {
      header = "Sell",
      txt = "Sell "..Config.Pepper,
      icon = "fa-regular fa-money-bill-1",
      params = {
      isServer = true,
      event = "qb-farming:server:Sell",
      args = 3
      }
    },
    {
      header = "Sell",
      txt = "Sell "..Config.Eggplant,
      icon = "fa-regular fa-money-bill-1",
      params = {
      isServer = true,
      event = "qb-farming:server:Sell",
      args = 4
      }
    },
    {
      header = "Sell",
      txt = "Sell "..Config.Mango,
      icon = "fa-regular fa-money-bill-1",
      params = {
      isServer = true,
      event = "qb-farming:server:Sell",
      args = 5
      }
    },
    {
      header = "Sell",
      txt = "Sell "..Config.Orange,
      icon = "fa-regular fa-money-bill-1",
      params = {
      isServer = true,
      event = "qb-farming:server:Sell",
      args = 6
      }
    },
    {
      header = "Sell",
      txt = "Sell "..Config.Apple,
      icon = "fa-regular fa-money-bill-1",
      params = {
      isServer = true,
      event = "qb-farming:server:Sell",
      args = 7
      }
    },
    {
      header = "Sell",
      txt = "Sell "..Config.Gauva,
      icon = "fa-regular fa-money-bill-1",
      params = {
      isServer = true,
      event = "qb-farming:server:Sell",
      args = 8
      }
    },
    {
      header = "Sell",
      txt = "Sell "..Config.Grapes,
      icon = "fa-regular fa-money-bill-1",
      params = {
      isServer = true,
      event = "qb-farming:server:Sell",
      args = 9
      }
    },
    {
        header = "Close",
        txt = "",
        params = {
            event = "qb-menu:closeMenu"
        }
    },
  }
exports['qb-menu']:openMenu(MuneSell)  
end)
---------Tomato make list
RegisterNetEvent('qb-farmming:client:TomatoMakeList')
AddEventHandler('qb-farmming:client:TomatoMakeList', function(src)
  local TomatoMake = {
    {
      header = "Tomato Product List Menu",
      icon = 'fa-brands fa-product-hunt',
      isMenuHeader = true
    },
    {
        header = "10 Tomato Required",
        txt = "Make Product Tomato Kitchup",
        icon = Config.ProductKitchup,
        params = {
        isServer = true,
        event = "qb-farming:server:MakeTomatoProduct",
        args = 1
        }
    },
    {
      header = "15 Tomato Required",
      txt = "Make Product Tomato Paste",
      icon = Config.ProductPaste,
      params = {
      isServer = true,
      event = "qb-farming:server:MakeTomatoProduct",
      args = 2
      }
    },
    {
      header = "7 Tomato Required",
      txt = "Make Product Tomato Souce",
      icon = Config.ProductSouce,
      params = {
      isServer = true,
      event = "qb-farming:server:MakeTomatoProduct",
      args = 3
      }
    },
    {
        header = "< Back",
        txt = "",
        params = {
            event = "qb-farmming:client:MenuListProductMaker"
        }
    },
  }
exports['qb-menu']:openMenu(TomatoMake)
end)
-------Sell Product Menu
RegisterNetEvent('qb-farmming:client:MenuProductSellList')
AddEventHandler('qb-farmming:client:MenuProductSellList', function(src)
  local MenuListProductSell= {
    {
      header = "Sell Product List",
      icon = 'fa-brands fa-product-hunt',
      isMenuHeader = true
    },
    {
        header = "Sell",
        txt = "Tomato Product",
        icon = 'fa-brands fa-product-hunt',
        params = {
        event = "qb-farmming:client:MenuTomatoProductSell",
        }
    },
    {
      header = "Sell",
      txt = "Rice Product",
      icon = 'fa-brands fa-product-hunt',
      params = {
      event = "qb-farmming:client:MenuRiceProductSell",
      }
    },
    {
      header = "Sell",
      txt = "Pepper Product",
      icon = 'fa-brands fa-product-hunt',
      params = {
      event = "qb-farmming:client:MenuPepperProductSell",
      }
    },
    {
      header = "Sell",
      txt = "Egplant Product",
      icon = 'fa-brands fa-product-hunt',
      params = {
      event = "qb-farmming:client:MenuEggplantProductSell",
      }
    },
    {
      header = "Sell",
      txt = "Mango Product",
      icon = 'fa-brands fa-product-hunt',
      params = {
      event = "qb-farmming:client:MenuMangoProductSell",
      }
    },
    {
      header = "Sell",
      txt = "Orange Product",
      icon = 'fa-brands fa-product-hunt',
      params = {
      event = "qb-farmming:client:MenuOrangeProductSell",
      }
    },
    {
      header = "Sell",
      txt = "Apple Product",
      icon = 'fa-brands fa-product-hunt',
      params = {
      event = "qb-farmming:client:MenuAppleProductSell",
      }
    },
    {
      header = "Sell",
      txt = "Gauva Product",
      icon = 'fa-brands fa-product-hunt',
      params = {
      event = "qb-farmming:client:MenuGauvaProductSell",
      }
    },
    {
      header = "Sell",
      txt = "Grapes Product",
      icon = 'fa-brands fa-product-hunt',
      params = {
      event = "qb-farmming:client:MenuGrapesProductSell",
      }
    },
    {
        header = "Close",
        txt = "",
        params = {
            event = "qb-menu:closeMenu"
        }
    },
  }
exports['qb-menu']:openMenu(MenuListProductSell)
end)

-------Sell Tomato Product Menu
RegisterNetEvent('qb-farmming:client:MenuTomatoProductSell')
AddEventHandler('qb-farmming:client:MenuTomatoProductSell', function(src)
  local TomatoProductSell= {
    {
      header = "Sell Tomato Product",
      icon = 'fa-brands fa-product-hunt',
      isMenuHeader = true
    },
    {
        header = "Sell",
        txt = "Sell Ketchup Product",
        icon = Config.ProductKitchup,
        params = {
        isServer = true,
        event = "qb-farming:server:SellTomatoProduct",
        args = 1
        }
    },
    {
        header = "Sell",
        txt = "Sell Paste Product",
        icon = Config.ProductPaste,
        params = {
        isServer = true,
        event = "qb-farming:server:SellTomatoProduct",
        args = 2
        }
    },
    {
        header = "Sell",
        txt = "Sell Souce Product",
        icon = Config.ProductSouce,
        params = {
        isServer = true,
        event = "qb-farming:server:SellTomatoProduct",
        args = 3
        }
    },
    {
        header = "< Back",
        txt = "",
        params = {
            event = "qb-farmming:client:MenuProductSellList"
        }
    },
  }
exports['qb-menu']:openMenu(TomatoProductSell)
end)

-------Sell Rice Product Menu
RegisterNetEvent('qb-farmming:client:MenuRiceProductSell')
AddEventHandler('qb-farmming:client:MenuRiceProductSell', function(src)
  local RiceProductSell= {
    {
      header = "Sell Tomato Product",
      icon = 'fa-brands fa-product-hunt',
      isMenuHeader = true
    },
    {
        header = "Sell",
        txt = "Sell Ketchup Product",
        icon = Config.ProductSackRice,
        params = {
        isServer = true,
        event = "qb-farming:server:SellRiceProduct",
        args = 1
        }
    },
    {
        header = "< Back",
        txt = "",
        params = {
            event = "qb-farmming:client:MenuProductSellList"
        }
    },
  }
exports['qb-menu']:openMenu(RiceProductSell)
end)

---------Rice make list
RegisterNetEvent('qb-farmming:client:RiceMakeList')
AddEventHandler('qb-farmming:client:RiceMakeList', function(src)
  local RiceMake = {
    {
      header = "Rice Product List Menu",
      icon = 'fa-brands fa-product-hunt',
      isMenuHeader = true
    },
    {
        header = "100 Rice Required",
        txt = "Make Product Sack Rice",
        icon = Config.ProductSackRice,
        params = {
        isServer = true,
        event = "qb-farming:server:MakeRiceProduct",
        args = 1
        }
    },
    {
      header = "< Back",
      txt = "",
      params = {
          event = "qb-farmming:client:MenuListProductMaker"
      }
    },
  }
exports['qb-menu']:openMenu(RiceMake)
end)

---------Pepper make list
RegisterNetEvent('qb-farmming:client:PepperMakeList')
AddEventHandler('qb-farmming:client:PepperMakeList', function(src)
  local RiceMake = {
    {
      header = "Pepper Product List Menu",
      icon = 'fa-brands fa-product-hunt',
      isMenuHeader = true
    },
    {
        header = "15 Pepper Required",
        txt = "Make Product Ground Black Pepper",
        icon = Config.ProductGroundPepper,
        params = {
        isServer = true,
        event = "qb-farming:server:MakePepperProduct",
        args = 1
        }
    },
    {
      header = "20 Pepper Required",
      txt = "Make Product Sweet Red Papper",
      icon = Config.ProductSweetRedPepper,
      params = {
      isServer = true,
      event = "qb-farming:server:MakePepperProduct",
      args = 2
      }
    },
    {
      header = "< Back",
      txt = "",
      params = {
          event = "qb-farmming:client:MenuListProductMaker"
      }
    },
  }
exports['qb-menu']:openMenu(RiceMake)
end)

-------Sell Pepper Product Menu
RegisterNetEvent('qb-farmming:client:MenuPepperProductSell')
AddEventHandler('qb-farmming:client:MenuPepperProductSell', function(src)
  local PepperProductSell= {
    {
      header = "Sell Pepper Product",
      icon = 'fa-brands fa-product-hunt',
      isMenuHeader = true
    },
    {
        header = "Sell",
        txt = "Sell Ground Pepper Product",
        icon = Config.ProductGroundPepper,
        params = {
        isServer = true,
        event = "qb-farming:server:SellPepperProduct",
        args = 1
        }
    },
    {
      header = "Sell",
      txt = "Sell Sweet Red Pepper Product",
      icon = Config.ProductSweetRedPepper,
      params = {
      isServer = true,
      event = "qb-farming:server:SellPepperProduct",
      args = 2
      }
    },
    {
        header = "< Back",
        txt = "",
        params = {
            event = "qb-farmming:client:MenuProductSellList"
        }
    },
  }
exports['qb-menu']:openMenu(PepperProductSell)
end)

---------Eggplant make list
RegisterNetEvent('qb-farmming:client:EggplantMakeList')
AddEventHandler('qb-farmming:client:EggplantMakeList', function(src)
  local EggplantMake = {
    {
      header = "Eggplant Product List Menu",
      icon = 'fa-brands fa-product-hunt',
      isMenuHeader = true
    },
    {
        header = "15 Eggplant Required",
        txt = "Make Product Grilled Eggplant",
        icon = Config.ProductGrilledEggplant,
        params = {
        isServer = true,
        event = "qb-farming:server:MakeEggplantProduct",
        args = 1
        }
    },
    {
      header = "< Back",
      txt = "",
      params = {
          event = "qb-farmming:client:MenuListProductMaker"
      }
    },
  }
exports['qb-menu']:openMenu(EggplantMake)
end)

-------Sell Eggplant Product Menu
RegisterNetEvent('qb-farmming:client:MenuEggplantProductSell')
AddEventHandler('qb-farmming:client:MenuEggplantProductSell', function(src)
  local EggplantProductSell= {
    {
      header = "Sell Pepper Product",
      icon = 'fa-brands fa-product-hunt',
      isMenuHeader = true
    },
    {
        header = "Sell",
        txt = "Sell Grilled Eggplant Product",
        icon = Config.ProductGrilledEggplant,
        params = {
        isServer = true,
        event = "qb-farming:server:SellEggplantProduct",
        args = 1
        }
    },
    {
        header = "< Back",
        txt = "",
        params = {
            event = "qb-farmming:client:MenuProductSellList"
        }
    },
  }
exports['qb-menu']:openMenu(EggplantProductSell)
end)

---------Mango make list
RegisterNetEvent('qb-farmming:client:MangoMakeList')
AddEventHandler('qb-farmming:client:MangoMakeList', function(src)
  local MangoMake = {
    {
      header = "Mango Product List Menu",
      icon = 'fa-brands fa-product-hunt',
      isMenuHeader = true
    },
    {
        header = "10 Mango Required",
        txt = "Make Product Mango Juice",
        icon = Config.ProductMangoJuice,
        params = {
        isServer = true,
        event = "qb-farming:server:MakeMangoProduct",
        args = 1
        }
    },
    {
      header = "25 Mango Required",
      txt = "Make Product Mango Wine",
      icon = Config.ProductMangoWine,
      params = {
      isServer = true,
      event = "qb-farming:server:MakeMangoProduct",
      args = 2
      }
    },
    {
      header = "< Back",
      txt = "",
      params = {
          event = "qb-farmming:client:MenuListProductMaker"
      }
    },
  }
exports['qb-menu']:openMenu(MangoMake)
end)

-------Sell Mango Product Menu
RegisterNetEvent('qb-farmming:client:MenuMangoProductSell')
AddEventHandler('qb-farmming:client:MenuMangoProductSell', function(src)
  local MangoProductSell = {
    {
      header = "Mango Product",
      icon = 'fa-brands fa-product-hunt',
      isMenuHeader = true
    },
    {
        header = "Sell Mango Juice",
        txt = "Sell Mango Juice",
        icon = Config.ProductMangoJuice,
        params = {
        isServer = true,
        event = "qb-farming:server:SellMangoProduct",
        args = 1
        }
    },
    {
      header = "Sell Mango Wine",
      txt = "Sell Mango Wine",
      icon = Config.ProductMangoWine,
      params = {
      isServer = true,
      event = "qb-farming:server:SellMangoProduct",
      args = 2
      }
    },
    {
      header = "< Back",
      txt = "",
      params = {
          event = "qb-farmming:client:MenuListProductMaker"
      }
    },
  }
exports['qb-menu']:openMenu(MangoProductSell)
end)


---------Orange make list
RegisterNetEvent('qb-farmming:client:OrangeMakeList')
AddEventHandler('qb-farmming:client:OrangeMakeList', function(src)
  local OrangeMake = {
    {
      header = "Orange Product List Menu",
      icon = 'fa-brands fa-product-hunt',
      isMenuHeader = true
    },
    {
        header = "10 Orange Required",
        txt = "Make Product Orange Juice",
        icon = Config.ProductOrangeJuice,
        params = {
        isServer = true,
        event = "qb-farming:server:MakeOrangeProduct",
        args = 1
        }
    },
    {
      header = "25 Orange Required",
      txt = "Make Product Orange Wine",
      icon = Config.ProductOrangeWine,
      params = {
      isServer = true,
      event = "qb-farming:server:MakeOrangeProduct",
      args = 2
      }
    },
    {
      header = "< Back",
      txt = "",
      params = {
          event = "qb-farmming:client:MenuListProductMaker"
      }
    },
  }
exports['qb-menu']:openMenu(OrangeMake)
end)

-------Sell Mango Product Menu
RegisterNetEvent('qb-farmming:client:MenuOrangeProductSell')
AddEventHandler('qb-farmming:client:MenuOrangeProductSell', function(src)
  local OrangeProductSell = {
    {
      header = "Orange Product",
      icon = 'fa-brands fa-product-hunt',
      isMenuHeader = true
    },
    {
        header = "Sell Orange Juice",
        txt = "Sell Orange Juice",
        icon = Config.ProductOrangeJuice,
        params = {
        isServer = true,
        event = "qb-farming:server:SellOrangeProduct",
        args = 1
        }
    },
    {
      header = "Sell Orange Wine",
      txt = "Sell Orange Wine",
      icon = Config.ProductOrangeWine,
      params = {
      isServer = true,
      event = "qb-farming:server:SellOrangeProduct",
      args = 2
      }
  },
    {
      header = "< Back",
      txt = "",
      params = {
          event = "qb-farmming:client:MenuListProductMaker"
      }
    },
  }
exports['qb-menu']:openMenu(OrangeProductSell)
end)


---------Apple make list
RegisterNetEvent('qb-farmming:client:AppleMakeList')
AddEventHandler('qb-farmming:client:AppleMakeList', function(src)
  local AppleMake = {
    {
      header = "Apple Product List Menu",
      icon = 'fa-brands fa-product-hunt',
      isMenuHeader = true
    },
    {
        header = "10 Apple Required",
        txt = "Make Product Apple Juice",
        icon = Config.ProductAppleJuice,
        params = {
        isServer = true,
        event = "qb-farming:server:MakeAppleProduct",
        args = 1
        }
    },
    {
      header = "25 Apple Required",
      txt = "Make Product Apple Wine",
      icon = Config.ProductAppleWine,
      params = {
      isServer = true,
      event = "qb-farming:server:MakeAppleProduct",
      args = 2
      }
    },
    {
      header = "< Back",
      txt = "",
      params = {
          event = "qb-farmming:client:MenuListProductMaker"
      }
    },
  }
exports['qb-menu']:openMenu(AppleMake)
end)

-------SellApple Product Menu
RegisterNetEvent('qb-farmming:client:MenuAppleProductSell')
AddEventHandler('qb-farmming:client:MenuAppleProductSell', function(src)
  local AppleProductSell = {
    {
      header = "Apple Product",
      icon = 'fa-brands fa-product-hunt',
      isMenuHeader = true
    },
    {
        header = "Sell Apple Juice",
        txt = "Sell Apple Juice",
        icon = Config.ProductAppleJuice,
        params = {
        isServer = true,
        event = "qb-farming:server:SellAppleProduct",
        args = 1
        }
    },
    {
      header = "Sell Apple Jelly",
      txt = "Sell Apple Jelly",
      icon = Config.ProductAppleWine,
      params = {
      isServer = true,
      event = "qb-farming:server:SellAppleProduct",
      args = 2
      }
  },
    {
      header = "< Back",
      txt = "",
      params = {
          event = "qb-farmming:client:MenuListProductMaker"
      }
    },
  }
exports['qb-menu']:openMenu(AppleProductSell)
end)


---------Gauva make list
RegisterNetEvent('qb-farmming:client:GauvaMakeList')
AddEventHandler('qb-farmming:client:GauvaMakeList', function(src)
  local GauvaMake = {
    {
      header = "Gauva Product List Menu",
      icon = 'fa-brands fa-product-hunt',
      isMenuHeader = true
    },
    {
        header = "10 Gauva Required",
        txt = "Make Product Gauva Juice",
        icon = Config.ProductGauvaJuice,
        params = {
        isServer = true,
        event = "qb-farming:server:MakeGauvaProduct",
        args = 1
        }
    },
    {
      header = "25 Gauva Required",
      txt = "Make Product Gauva Wine",
      icon = Config.ProductGauvaWine,
      params = {
      isServer = true,
      event = "qb-farming:server:MakeGauvaProduct",
      args = 2
      }
    },
    {
      header = "< Back",
      txt = "",
      params = {
          event = "qb-farmming:client:MenuListProductMaker"
      }
    },
  }
exports['qb-menu']:openMenu(GauvaMake)
end)


-------Sell Gauva Product Menu
RegisterNetEvent('qb-farmming:client:MenuGauvaProductSell')
AddEventHandler('qb-farmming:client:MenuGauvaProductSell', function(src)
  local GauvaProductSell = {
    {
      header = "Gauva Product",
      icon = 'fa-brands fa-product-hunt',
      isMenuHeader = true
    },
    {
        header = "Sell Gauva Juice",
        txt = "Sell Gauva Juice",
        icon = Config.ProductGauvaJuice,
        params = {
        isServer = true,
        event = "qb-farming:server:SellGauvaProduct",
        args = 1
        }
    },
    {
      header = "Sell Gauva Wine",
      txt = "Sell Gauva Wine",
      icon = Config.ProductGauvaWine,
      params = {
      isServer = true,
      event = "qb-farming:server:SellGauvaProduct",
      args = 2
      }
  },
    {
      header = "< Back",
      txt = "",
      params = {
          event = "qb-farmming:client:MenuListProductMaker"
      }
    },
  }
exports['qb-menu']:openMenu(GauvaProductSell)
end)


---------Gauva make list
RegisterNetEvent('qb-farmming:client:GrapesMakeList')
AddEventHandler('qb-farmming:client:GrapesMakeList', function(src)
  local GrapesMake = {
    {
      header = "Grapes Product List Menu",
      icon = 'fa-brands fa-product-hunt',
      isMenuHeader = true
    },
    {
        header = "10 Grapes Required",
        txt = "Make Product Grapes Juice",
        icon = Config.ProductGrapesJuice,
        params = {
        isServer = true,
        event = "qb-farming:server:MakeGrapesProduct",
        args = 1
        }
    },
    {
      header = "25 Grapes Required",
      txt = "Make Product Grapes Wine",
      icon = Config.ProductGrapesWine,
      params = {
      isServer = true,
      event = "qb-farming:server:MakeGrapesProduct",
      args = 2
      }
    },
    {
      header = "< Back",
      txt = "",
      params = {
          event = "qb-farmming:client:MenuListProductMaker"
      }
    },
  }
exports['qb-menu']:openMenu(GrapesMake)
end)

-------Sell Gauva Product Menu
RegisterNetEvent('qb-farmming:client:MenuGrapesProductSell')
AddEventHandler('qb-farmming:client:MenuGrapesProductSell', function(src)
  local GrapesProductSell = {
    {
      header = "Grapes Product",
      icon = 'fa-brands fa-product-hunt',
      isMenuHeader = true
    },
    {
        header = "Sell Grapes Juice",
        txt = "Sell Grapes Juice",
        icon = Config.ProductGrapesJuice,
        params = {
        isServer = true,
        event = "qb-farming:server:SellGrapesProduct",
        args = 1
        }
    },
    {
      header = "Sell Grapes Wine",
      txt = "Sell Grapes Wine",
      icon = Config.ProductGrapesWine,
      params = {
      isServer = true,
      event = "qb-farming:server:SellGrapesProduct",
      args = 2
      }
  },
    {
      header = "< Back",
      txt = "",
      params = {
          event = "qb-farmming:client:MenuListProductMaker"
      }
    },
  }
exports['qb-menu']:openMenu(GrapesProductSell)
end)
