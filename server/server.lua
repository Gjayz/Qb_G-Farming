local QBCore = exports['qb-core']:GetCoreObject()


-- Tomato Rewards
RegisterNetEvent("qb-farming:server:TomatoRewards")
AddEventHandler("qb-farming:server:TomatoRewards", function(src)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src) 
    local amount = Config.PickAmountTomato
    Player.Functions.AddItem(Config.Tomato , amount)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.Tomato], "add", amount)
    QBCore.Functions.Notify(src, "You Have Ricived "..amount.." Tomato", "success", 2000)
end)

-- Rice Rewards
RegisterNetEvent("qb-farming:server:RiceRewards")
AddEventHandler("qb-farming:server:RiceRewards", function(src)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src) 
    local amount = Config.PickAmountRice
    Player.Functions.AddItem(Config.Rice , amount)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.Rice], "add", amount)
    QBCore.Functions.Notify(src, "You Have Ricived "..amount.." Rice", "success", 2000)
end)

-- Pepper Rewards
RegisterNetEvent("qb-farming:server:PepperRewards")
AddEventHandler("qb-farming:server:PepperRewards", function(src)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src) 
    local amount = Config.PickAmountPepper
    Player.Functions.AddItem(Config.Pepper , amount)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.Pepper], "add", amount)
    QBCore.Functions.Notify(src, "You Have Ricived "..amount.." Red Pepper", "success", 2000)
end)

-- Eggplant Rewards
RegisterNetEvent("qb-farming:server:EggplantRewards")
AddEventHandler("qb-farming:server:EggplantRewards", function(src)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src) 
    local amount = Config.PickAmountEggplant
    Player.Functions.AddItem(Config.Eggplant , amount)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.Eggplant], "add", amount)
    QBCore.Functions.Notify(src, "You Have Ricived "..amount.." Eggplant", "success", 2000)
end)


-- Mango Rewards
RegisterNetEvent("qb-farming:server:MangoRewards")
AddEventHandler("qb-farming:server:MangoRewards", function(src)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src) 
    local amount = Config.PickAmountMango
    Player.Functions.AddItem(Config.Mango , amount)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.Mango], "add", amount)
    QBCore.Functions.Notify(src, "You Have Ricived "..amount.." Mango", "success", 2000)
end)


-- Orange Rewards
RegisterNetEvent("qb-farming:server:OrangeRewards")
AddEventHandler("qb-farming:server:OrangeRewards", function(src)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src) 
    local amount = Config.PickAmountOrange
    Player.Functions.AddItem(Config.Orange, amount)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.Orange], "add", amount)
    QBCore.Functions.Notify(src, "You Have Ricived "..amount.." Orange", "success", 2000)
end)

-- Apple Rewards
RegisterNetEvent("qb-farming:server:AppleRewards")
AddEventHandler("qb-farming:server:AppleRewards", function(src)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src) 
    local amount = Config.PickAmountApple
    Player.Functions.AddItem(Config.Apple, amount)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.Apple], "add", amount)
    QBCore.Functions.Notify(src, "You Have Ricived "..amount.." Apple", "success", 2000)
end)

-- Gauva Rewards
RegisterNetEvent("qb-farming:server:GauvaRewards")
AddEventHandler("qb-farming:server:GauvaRewards", function(src)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src) 
    local amount = Config.PickAmountGauva
    Player.Functions.AddItem(Config.Gauva, amount)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.Gauva], "add", amount)
    QBCore.Functions.Notify(src, "You Have Ricived "..amount.." Gauva", "success", 2000)
end)

-- Grapes Rewards
RegisterNetEvent("qb-farming:server:GrapesRewards")
AddEventHandler("qb-farming:server:GrapesRewards", function(src)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src) 
    local amount = Config.PickAmountGrapes
    Player.Functions.AddItem(Config.Grapes , amount)
    TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.Grapes], "add", amount)
    QBCore.Functions.Notify(src, "You Have Ricived "..amount.." Grapes", "success", 2000)
end)


-- Sell 
RegisterNetEvent('qb-farming:server:Sell')
AddEventHandler('qb-farming:server:Sell', function(args)
  local src = source
  local player = QBCore.Functions.GetPlayer(src)
  local price = 0
  local amountResources = 0
  local args = tonumber(args)
  if args == 1 then
    local tomato = Config.Tomato
    if tomato and player.Functions.GetItemByName(tomato) ~= nil then
        while true do
          local itemData = player.Functions.GetItemByName(tomato)
          if itemData ~= nil then
            amountResources = amountResources + 1
            player.Functions.RemoveItem(tomato , 1)
          else
            price = amountResources * Config.TomatoPrice
            break
          end
        end
        TriggerClientEvent('qb-farming:client:StartSell', src)
        player.Functions.AddMoney('cash', price)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[tomato], 'remove', amountResources)
        QBCore.Functions.Notify(src, amountResources..' '..tomato..' sold for $'..price, 'success', 2000)
    else
        QBCore.Functions.Notify(src, Lang:t("error.No_Tomato"), "error",  2000)
    end
  elseif args == 2 then
    local rice = Config.Rice
    if rice and player.Functions.GetItemByName(rice) ~= nil then
        while true do
          local itemData = player.Functions.GetItemByName(rice)
          if itemData ~= nil then
            amountResources = amountResources + 1
            player.Functions.RemoveItem(rice , 1)
          else
            price = amountResources * Config.RicePrice
            break
          end
        end
        TriggerClientEvent('qb-farming:client:StartSell', src)
        player.Functions.AddMoney('cash', price)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[rice], 'remove', amountResources)
        QBCore.Functions.Notify(src, amountResources..' '..rice..' sold for $'..price, 'success', 2000)
    else
        QBCore.Functions.Notify(src, Lang:t("error.No_Rice"), "error",  2000)
    end
  elseif args == 3 then
    local pepper = Config.Pepper
    if pepper and player.Functions.GetItemByName(pepper) ~= nil then
        while true do
          local itemData = player.Functions.GetItemByName(pepper)
          if itemData ~= nil then
            amountResources = amountResources + 1
            player.Functions.RemoveItem(pepper , 1)
          else
            price = amountResources * Config.PepperPrice
            break
          end
        end
        TriggerClientEvent('qb-farming:client:StartSell', src)
        player.Functions.AddMoney('cash', price)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[pepper], 'remove', amountResources)
        QBCore.Functions.Notify(src, amountResources..' '..pepper..' sold for $'..price, 'success', 2000)
    else
        QBCore.Functions.Notify(src, Lang:t("error.No_Pepper"), "error",  2000)
    end
  elseif args == 4 then
    local eggplant = Config.Eggplant
    if eggplant and player.Functions.GetItemByName(eggplant) ~= nil then
        while true do
          local itemData = player.Functions.GetItemByName(eggplant)
          if itemData ~= nil then
            amountResources = amountResources + 1
            player.Functions.RemoveItem(eggplant , 1)
          else
            price = amountResources * Config.EggplantPrice
            break
          end
        end
        TriggerClientEvent('qb-farming:client:StartSell', src)
        player.Functions.AddMoney('cash', price)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[eggplant], 'remove', amountResources)
        QBCore.Functions.Notify(src, amountResources..' '..eggplant..' sold for $'..price, 'success', 2000)
    else
        QBCore.Functions.Notify(src, Lang:t("error.No_Eggplant"), "error",  2000)
    end
  elseif args == 5 then
    local mango = Config.Mango
    if mango and player.Functions.GetItemByName(mango) ~= nil then
        while true do
          local itemData = player.Functions.GetItemByName(mango)
          if itemData ~= nil then
            amountResources = amountResources + 1
            player.Functions.RemoveItem(mango , 1)
          else
            price = amountResources * Config.MangoPrice
            break
          end
        end
        TriggerClientEvent('qb-farming:client:StartSell', src)
        player.Functions.AddMoney('cash', price)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[mango], 'remove', amountResources)
        QBCore.Functions.Notify(src, amountResources..' '..mango..' sold for $'..price, 'success', 2000)
    else
        QBCore.Functions.Notify(src, Lang:t("error.No_Mango"), "error",  2000)
    end
  elseif args == 6 then
    local orange = Config.Orange
    if orange and player.Functions.GetItemByName(orange) ~= nil then
        while true do
          local itemData = player.Functions.GetItemByName(orange)
          if itemData ~= nil then
            amountResources = amountResources + 1
            player.Functions.RemoveItem(orange , 1)
          else
            price = amountResources * Config.OrangePrice
            break
          end
        end
        TriggerClientEvent('qb-farming:client:StartSell', src)
        player.Functions.AddMoney('cash', price)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[orange], 'remove', amountResources)
        QBCore.Functions.Notify(src, amountResources..' '..orange..' sold for $'..price, 'success', 2000)
    else
        QBCore.Functions.Notify(src, Lang:t("error.No_Orange"), "error",  2000)
    end
  elseif args == 7 then
    local apple = Config.Apple
    if apple and player.Functions.GetItemByName(apple) ~= nil then
        while true do
          local itemData = player.Functions.GetItemByName(apple)
          if itemData ~= nil then
            amountResources = amountResources + 1
            player.Functions.RemoveItem(apple , 1)
          else
            price = amountResources * Config.ApplePrice
            break
          end
        end
        TriggerClientEvent('qb-farming:client:StartSell', src)
        player.Functions.AddMoney('cash', price)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[apple], 'remove', amountResources)
        QBCore.Functions.Notify(src, amountResources..' '..apple..' sold for $'..price, 'success', 2000)
    else
        QBCore.Functions.Notify(src, Lang:t("error.No_Apple"), "error",  2000)
    end
  elseif args == 8 then
    local gauva = Config.Gauva 
    if gauva and player.Functions.GetItemByName(gauva) ~= nil then
        while true do
          local itemData = player.Functions.GetItemByName(gauva)
          if itemData ~= nil then
            amountResources = amountResources + 1
            player.Functions.RemoveItem(gauva , 1)
          else
            price = amountResources * Config.GauvaPrice
            break
          end
        end
        TriggerClientEvent('qb-farming:client:StartSell', src)
        player.Functions.AddMoney('cash', price)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[gauva], 'remove', amountResources)
        QBCore.Functions.Notify(src, amountResources..' '..gauva..' sold for $'..price, 'success', 2000)
    else
        QBCore.Functions.Notify(src, Lang:t("error.No_Gauva"), "error",  2000)
    end
  elseif args == 9 then
    local grapes = Config.Grapes 
    if grapes and player.Functions.GetItemByName(grapes) ~= nil then
        while true do
          local itemData = player.Functions.GetItemByName(grapes)
          if itemData ~= nil then
            amountResources = amountResources + 1
            player.Functions.RemoveItem(grapes , 1)
          else
            price = amountResources * Config.GrapesPrice
            break
          end
        end
        TriggerClientEvent('qb-farming:client:StartSell', src)
        player.Functions.AddMoney('cash', price)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[grapes], 'remove', amountResources)
        QBCore.Functions.Notify(src, amountResources..' '..gauva..' sold for $'..price, 'success', 2000)
    else
        QBCore.Functions.Notify(src, Lang:t("error.No_Grapes"), "error",  2000)
    end
  end
end)

-- -- Make Product Tomato
RegisterNetEvent('qb-farming:server:MakeTomatoProduct')
AddEventHandler('qb-farming:server:MakeTomatoProduct', function(args)
    local src = source
    local player = QBCore.Functions.GetPlayer(src)
    local tomato = Config.Tomato
    local args = tonumber(args)
    if args == 1 then
      local tomatoAmountMaKeKitchup = 10
      if player.Functions.GetItemByName(tomato) ~= nil and player.Functions.GetItemByName(tomato).amount >= tomatoAmountMaKeKitchup then
        TriggerClientEvent('qb-farming:client:StartMake', src)
        player.Functions.RemoveItem(tomato, tomatoAmountMaKeKitchup)
        player.Functions.AddItem(Config.ProductKitchup, 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[tomato], 'remove', tomatoAmountMaKeKitchup)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.ProductKitchup], 'add', 1)
        QBCore.Functions.Notify(src, 'You have Add Ketchup Inventory!', 'success', 2000)
      else
        QBCore.Functions.Notify(src, Lang:t("error.Meke_Ketchup"), "error",  2000)
      end
    elseif args == 2 then
      local tomatoAmountMaKePaste = 15
      if player.Functions.GetItemByName(tomato) ~= nil and player.Functions.GetItemByName(tomato).amount >= tomatoAmountMaKePaste then
        TriggerClientEvent('qb-farming:client:StartMake', src)
        player.Functions.RemoveItem(tomato, tomatoAmountMaKePaste)
        player.Functions.AddItem(Config.ProductPaste, 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[tomato], 'remove', tomatoAmountMaKePaste)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.ProductPaste], 'add', 1)
        QBCore.Functions.Notify(src, 'You have Add Paste Inventory!', 'success', 2000)
      else
        QBCore.Functions.Notify(src, Lang:t("error.Meke_Paste"), "error",  2000)
      end
    elseif args == 3 then
      local tomatoAmountMaKeSouce = 7
      if player.Functions.GetItemByName(tomato) ~= nil and player.Functions.GetItemByName(tomato).amount >= tomatoAmountMaKeSouce then
        TriggerClientEvent('qb-farming:client:StartMake', src)
        player.Functions.RemoveItem(tomato, tomatoAmountMaKeSouce)
        player.Functions.AddItem(Config.ProductSouce, 1)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[tomato], 'remove', tomatoAmountMaKeSouce)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.ProductSouce], 'add', 1)
        QBCore.Functions.Notify(src, 'You have Add Souce Inventory!', 'success', 2000)
      else
        QBCore.Functions.Notify(src, Lang:t("error.Make_Souce"), "error",  2000)
      end
    end
end)


-- Sell Tomato Product
RegisterNetEvent('qb-farming:server:SellTomatoProduct')
AddEventHandler('qb-farming:server:SellTomatoProduct', function(args)
    local src = source
    local player = QBCore.Functions.GetPlayer(src)
    local price = 0
    local amountResources = 0
    local args = tonumber(args)
    if args == 1 then
      if player.Functions.GetItemByName(Config.ProductKitchup) ~= nil then
        while true do
          local itemData = player.Functions.GetItemByName(Config.ProductKitchup)
          if itemData ~= nil then
            amountResources = amountResources + 1
            player.Functions.RemoveItem(Config.ProductKitchup , 1)
          else
            price = amountResources * Config.PriceKetchup
            break
          end
        end
        TriggerClientEvent('qb-farming:client:StartSell', src)
        player.Functions.AddMoney('cash', price)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.ProductKitchup], 'remove', amountResources)
        QBCore.Functions.Notify(src, amountResources..' Ketchup sold for $'..price, 'success', 2000)
      else
        QBCore.Functions.Notify(src, Lang:t("error.No_Ketchup"), 'error', 2000)
      end
    elseif args == 2 then
      if player.Functions.GetItemByName(Config.ProductPaste) ~= nil then
        while true do
          local itemData = player.Functions.GetItemByName(Config.ProductPaste)
          if itemData ~= nil then
            amountResources = amountResources + 1
            player.Functions.RemoveItem(Config.ProductPaste , 1)
          else
            price = amountResources * Config.PricePaste
            break
          end
        end
        TriggerClientEvent('qb-farming:client:StartSell', src)
        player.Functions.AddMoney('cash', price)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.ProductPaste], 'remove', amountResources)
        QBCore.Functions.Notify(src, amountResources..' Paste sold for $'..price, 'success', 2000)
      else
        QBCore.Functions.Notify(src, Lang:t("error.No_Paste"), 'error', 2000)
      end
    elseif args == 3 then
      if player.Functions.GetItemByName(Config.ProductSouce) ~= nil then
        while true do
          local itemData = player.Functions.GetItemByName(Config.ProductSouce)
          if itemData ~= nil then
            amountResources = amountResources + 1
            player.Functions.RemoveItem(Config.ProductSouce , 1)
          else
            price = amountResources * Config.PriceSouce
            break
          end
        end
        TriggerClientEvent('qb-farming:client:StartSell', src)
        player.Functions.AddMoney('cash', price)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.ProductSouce], 'remove', amountResources)
        QBCore.Functions.Notify(src, amountResources..' Paste sold for $'..price, 'success', 2000)
      else
        QBCore.Functions.Notify(src, Lang:t("error.No_Souce"), 'error', 2000)
      end
    end
end)

-- Make Product Rice
RegisterNetEvent('qb-farming:server:MakeRiceProduct')
AddEventHandler('qb-farming:server:MakeRiceProduct', function(args)
  local src = source
  local player = QBCore.Functions.GetPlayer(src)
  local rice = Config.Rice
  local args = tonumber(args)
  if args == 1 then
    local RiceAmountMaKeOneSack = 100
    if player.Functions.GetItemByName(rice) ~= nil and player.Functions.GetItemByName(rice).amount >= RiceAmountMaKeOneSack then
      TriggerClientEvent('qb-farming:client:StartMake', src)
      player.Functions.RemoveItem(rice, RiceAmountMaKeOneSack)
      player.Functions.AddItem(Config.ProductSackRice, 1)
      TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[rice], 'remove', RiceAmountMaKeOneSack)
      TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.ProductSackRice], 'add', 1)
      QBCore.Functions.Notify(src, 'You have Add One Sack Rice Inventory!', 'success', 2000)
    else
      QBCore.Functions.Notify(src, Lang:t("error.Make_SackRice"), "error",  2000)
    end
  end
end)

-- Sell Rice Product
RegisterNetEvent('qb-farming:server:SellRiceProduct')
AddEventHandler('qb-farming:server:SellRiceProduct', function(args)
    local src = source
    local player = QBCore.Functions.GetPlayer(src)
    local price = 0
    local amountResources = 0
    local args = tonumber(args)
    if args == 1 then
      if player.Functions.GetItemByName(Config.ProductSackRice) ~= nil then
        while true do
          local itemData = player.Functions.GetItemByName(Config.ProductSackRice)
          if itemData ~= nil then
            amountResources = amountResources + 1
            player.Functions.RemoveItem(Config.ProductSackRice , 1)
          else
            price = amountResources * Config.PriceKetchup 
            break
          end
        end
        TriggerClientEvent('qb-farming:client:StartSell', src)
        player.Functions.AddMoney('cash', price)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.ProductSackRice], 'remove', amountResources)
        QBCore.Functions.Notify(src, amountResources..' Rice Sack sold for $'..price, 'success', 2000)
      else
        QBCore.Functions.Notify(src, Lang:t("error.No_RiceSack"), 'error', 2000)
      end
    end
end)


-- Make Product Pepper
RegisterNetEvent("qb-farming:server:MakePepperProduct")
AddEventHandler("qb-farming:server:MakePepperProduct", function(args)
  local src = source
  local player = QBCore.Functions.GetPlayer(src)
  local pepper = Config.Pepper
  local args = tonumber(args)
  if args == 1 then
    local PepperAmountMaKeGroundBlackPepper = 15
    if player.Functions.GetItemByName(pepper) ~= nil and player.Functions.GetItemByName(pepper).amount >= PepperAmountMaKeGroundBlackPepper then
      TriggerClientEvent('qb-farming:client:StartMake', src)
      player.Functions.RemoveItem(pepper, PepperAmountMaKeGroundBlackPepper)
      player.Functions.AddItem(Config.ProductGroundPepper, 1)
      TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[pepper], 'remove', PepperAmountMaKeGroundBlackPepper)
      TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.ProductGroundPepper], 'add', 1)
      QBCore.Functions.Notify(src, 'You have Add Black Ground Pepper Inventory!', 'success', 2000)
    else
      QBCore.Functions.Notify(src, Lang:t("error.Make_GroundPepper"), "error",  2000)
    end
  elseif args == 2 then
    local PepperAmountSweetRedPepper = 20
    if player.Functions.GetItemByName(pepper) ~= nil and player.Functions.GetItemByName(pepper).amount >= PepperAmountSweetRedPepper then
      TriggerClientEvent('qb-farming:client:StartMake', src)
      player.Functions.RemoveItem(pepper, PepperAmountSweetRedPepper)
      player.Functions.AddItem(Config.ProductSweetRedPepper, 1)
      TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[pepper], 'remove', PepperAmountSweetRedPepper)
      TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.ProductSweetRedPepper], 'add', 1)
      QBCore.Functions.Notify(src, 'You have Add Sweet Red Pepper Inventory!', 'success', 2000)
    else
      QBCore.Functions.Notify(src, Lang:t("error.Make_SweetRedPepper"), "error",  2000)
    end
  end
end)


-- Sell Pepper Product
RegisterNetEvent('qb-farming:server:SellPepperProduct')
AddEventHandler('qb-farming:server:SellPepperProduct', function(args)
    local src = source
    local player = QBCore.Functions.GetPlayer(src)
    local price = 0
    local amountResources = 0
    local args = tonumber(args)
    if args == 1 then
      if player.Functions.GetItemByName(Config.ProductPepper) ~= nil then
        while true do
          local itemData = player.Functions.GetItemByName(Config.ProductPepper)
          if itemData ~= nil then
            amountResources = amountResources + 1
            player.Functions.RemoveItem(Config.ProductPepper , 1)
          else
            price = amountResources * Config.PriceGroundPepper
            break
          end
        end
        TriggerClientEvent('qb-farming:client:StartSell', src)
        player.Functions.AddMoney('cash', price)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.ProductPepper], 'remove', amountResources)
        QBCore.Functions.Notify(src, amountResources..' Ground Pepper sold for $'..price, 'success', 2000)
      else
        QBCore.Functions.Notify(src, Lang:t("error.No_GroundPepper"), 'error', 2000)
      end
    elseif args == 2 then
      if player.Functions.GetItemByName(Config.ProductSweetRedPepper) ~= nil then
        while true do
          local itemData = player.Functions.GetItemByName(Config.ProductSweetRedPepper)
          if itemData ~= nil then
            amountResources = amountResources + 1
            player.Functions.RemoveItem(Config.ProductSweetRedPepper , 1)
          else
            price = amountResources * Config.PriceSweetRedPepper
            break
          end
        end
        TriggerClientEvent('qb-farming:client:StartSell', src)
        player.Functions.AddMoney('cash', price)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.ProductSweetRedPepper], 'remove', amountResources)
        QBCore.Functions.Notify(src, amountResources..' Sweet Red Pepper sold for $'..price, 'success', 2000)
      else
        QBCore.Functions.Notify(src, Lang:t("error.No_SweetPepper"), 'error', 2000)
      end
    end
end)


-- Make Product Eggplant
RegisterNetEvent('qb-farming:server:MakeEggplantProduct')
AddEventHandler('qb-farming:server:MakeEggplantProduct', function(args)
  local src = source
  local player = QBCore.Functions.GetPlayer(src)
  local eggplant = Config.Eggplant
  local args = tonumber(args)
  if args == 1 then
    local EggplantAmountMaKeOnGrillEggplant = 15
    if player.Functions.GetItemByName(eggplant) ~= nil and player.Functions.GetItemByName(eggplant).amount >= EggplantAmountMaKeOnGrillEggplant then
      TriggerClientEvent('qb-farming:client:StartMake', src)
      player.Functions.RemoveItem(eggplant, EggplantAmountMaKeOnGrillEggplant)
      player.Functions.AddItem(Config.ProductGrilledEggplant, 1)
      TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[eggplant], 'remove', EggplantAmountMaKeOnGrillEggplant)
      TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.ProductGrilledEggplant], 'add', 1)
      QBCore.Functions.Notify(src, 'You have Add Grilled Eggplant Inventory!', 'success', 2000)
    else
      QBCore.Functions.Notify(src, Lang:t("error.Make_GrilledEggplant"), "error",  2000)
    end
  end
end)

-- Sell Eggplant Product
RegisterNetEvent('qb-farming:server:SellEggplantProduct')
AddEventHandler('qb-farming:server:SellEggplantProduct', function(args)
    local src = source
    local player = QBCore.Functions.GetPlayer(src)
    local price = 0
    local amountResources = 0
    local args = tonumber(args)
    if args == 1 then
      if player.Functions.GetItemByName(Config.ProductGrilledEggplant) ~= nil then
        while true do
          local itemData = player.Functions.GetItemByName(Config.ProductGrilledEggplant)
          if itemData ~= nil then
            amountResources = amountResources + 1
            player.Functions.RemoveItem(Config.ProductGrilledEggplant , 1)
          else
            price = amountResources * Config.PriceGrilledEggplant
            break
          end
        end
        TriggerClientEvent('qb-farming:client:StartSell', src)
        player.Functions.AddMoney('cash', price)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.ProductGrilledEggplant], 'remove', amountResources)
        QBCore.Functions.Notify(src, amountResources..' Grilled Eggplant sold for $'..price, 'success', 2000)
      else
        QBCore.Functions.Notify(src, Lang:t("error.No_GrilledEggplant"), 'error', 2000)
      end
    end
end)
-- Make Product Mango
RegisterNetEvent('qb-farming:server:MakeMangoProduct')
AddEventHandler('qb-farming:server:MakeMangoProduct', function(args)
  local src = source
  local player = QBCore.Functions.GetPlayer(src)
  local mango = Config.Mango
  local args = tonumber(args)
  if args == 1 then
    local AmountMaKeOnMangoJuice = 10
    if player.Functions.GetItemByName(mango) ~= nil and player.Functions.GetItemByName(mango).amount >= AmountMaKeOnMangoJuice then
      TriggerClientEvent('qb-farming:client:StartMake', src)
      player.Functions.RemoveItem(mango, AmountMaKeOnMangoJuice)
      player.Functions.AddItem(Config.ProductMangoJuice, 1)
      TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[mango], 'remove', AmountMaKeOnMangoJuice)
      TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.ProductMangoJuice], 'add', 1)
      QBCore.Functions.Notify(src, 'You have Add Mango Juice Inventory!', 'success', 2000)
    else
      QBCore.Functions.Notify(src, Lang:t("error.Make_MangoJuice"), "error",  2000)
    end
  elseif args == 2 then
    local AmountMaKeOnMangowine = 25
    if player.Functions.GetItemByName(mango) ~= nil and player.Functions.GetItemByName(mango).amount >= AmountMaKeOnMangowine then
      TriggerClientEvent('qb-farming:client:StartMake', src)
      player.Functions.RemoveItem(mango, AmountMaKeOnMangowine)
      player.Functions.AddItem(Config.ProductMangoWine, 1)
      TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[mango], 'remove', AmountMaKeOnMangowine)
      TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.ProductMangoWine], 'add', 1)
      QBCore.Functions.Notify(src, 'You have Add Dried Mango Inventory!', 'success', 2000)
    else
      QBCore.Functions.Notify(src, Lang:t("error.Make_MangoWine"), "error",  2000)
    end
  end
end)

-- Sell Mango Product
RegisterNetEvent('qb-farming:server:SellMangoProduct')
AddEventHandler('qb-farming:server:SellMangoProduct', function(args)
    local src = source
    local player = QBCore.Functions.GetPlayer(src)
    local price = 0
    local amountResources = 0
    local args = tonumber(args)
    if args == 1 then
      if player.Functions.GetItemByName(Config.ProductMangoJuice) ~= nil then
        while true do
          local itemData = player.Functions.GetItemByName(Config.ProductMangoJuice)
          if itemData ~= nil then
            amountResources = amountResources + 1
            player.Functions.RemoveItem(Config.ProductMangoJuice , 1)
          else
            price = amountResources * Config.PriceMangoJuice
            break
          end
        end
        TriggerClientEvent('qb-farming:client:StartSell', src)
        player.Functions.AddMoney('cash', price)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.ProductMangoJuice], 'remove', amountResources)
        QBCore.Functions.Notify(src, amountResources..' Mango Juice sold for $'..price, 'success', 2000)
      else
        QBCore.Functions.Notify(src, Lang:t("error.No_MangoJuice"), 'error', 2000)
      end
    elseif args == 2 then
      if player.Functions.GetItemByName(Config.ProductMangoWine) ~= nil then
        while true do
          local itemData = player.Functions.GetItemByName(Config.ProductMangoWine)
          if itemData ~= nil then
            amountResources = amountResources + 1
            player.Functions.RemoveItem(Config.ProductMangoWine , 1)
          else
            price = amountResources * Config.PriceMangowWine
            break
          end
        end
        TriggerClientEvent('qb-farming:client:StartSell', src)
        player.Functions.AddMoney('cash', price)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.ProductMangoWine], 'remove', amountResources)
        QBCore.Functions.Notify(src, amountResources..' Mango Wine sold for $'..price, 'success', 2000)
      else
        QBCore.Functions.Notify(src, Lang:t("error.No_MangoWine"), 'error', 2000)
      end
    end
end)

-- Make Product Orange
RegisterNetEvent('qb-farming:server:MakeOrangeProduct')
AddEventHandler('qb-farming:server:MakeOrangeProduct', function(args)
  local src = source
  local player = QBCore.Functions.GetPlayer(src)
  local orange = Config.Orange
  local args = tonumber(args)
  if args == 1 then
    local AmountMaKeOnOrangeJuice = 10
    if player.Functions.GetItemByName(orange) ~= nil and player.Functions.GetItemByName(orange).amount >= AmountMaKeOnOrangeJuice then
      TriggerClientEvent('qb-farming:client:StartMake', src)
      player.Functions.RemoveItem(orange, AmountMaKeOnOrangeJuice)
      player.Functions.AddItem(Config.ProductOrangeJuice, 1)
      TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[orange], 'remove', AmountMaKeOnOrangeJuice)
      TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.ProductOrangeJuice], 'add', 1)
      QBCore.Functions.Notify(src, 'You have Add Orange Juice Inventory!', 'success', 2000)
    else
      QBCore.Functions.Notify(src, Lang:t("error.Make_OrangeJuice"), "error",  2000)
    end
  elseif args == 2 then
    local AmountMaKeOnOrangeWine = 25
    if player.Functions.GetItemByName(orange) ~= nil and player.Functions.GetItemByName(orange).amount >= AmountMaKeOnOrangeWine then
      TriggerClientEvent('qb-farming:client:StartMake', src)
      player.Functions.RemoveItem(orange, AmountMaKeOnOrangeWine)
      player.Functions.AddItem(Config.ProductOrangeWine, 1)
      TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[orange], 'remove', AmountMaKeOnOrangeWine)
      TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.ProductOrangeWine], 'add', 1)
      QBCore.Functions.Notify(src, 'You have Add Orange Wine Inventory!', 'success', 2000)
    else
      QBCore.Functions.Notify(src, Lang:t("error.Make_OrangeWine"), "error",  2000)
    end
  end
end)


-- Sell Orange Product
RegisterNetEvent('qb-farming:server:SellOrangeProduct')
AddEventHandler('qb-farming:server:SellOrangeProduct', function(args)
    local src = source
    local player = QBCore.Functions.GetPlayer(src)
    local price = 0
    local amountResources = 0
    local args = tonumber(args)
    if args == 1 then
      if player.Functions.GetItemByName(Config.ProductOrangeJuice) ~= nil then
        while true do
          local itemData = player.Functions.GetItemByName(Config.ProductOrangeJuice)
          if itemData ~= nil then
            amountResources = amountResources + 1
            player.Functions.RemoveItem(Config.ProductOrangeJuice , 1)
          else
            price = amountResources * Config.PriceOrangeJuice
            break
          end
        end
        TriggerClientEvent('qb-farming:client:StartSell', src)
        player.Functions.AddMoney('cash', price)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.ProductOrangeJuice], 'remove', amountResources)
        QBCore.Functions.Notify(src, amountResources..' Orange Juice sold for $'..price, 'success', 2000)
      else
        QBCore.Functions.Notify(src, Lang:t("error.No_OrangeJuice"), 'error', 2000)
      end
    elseif args == 2 then
      if player.Functions.GetItemByName(Config.ProductOrangeWine) ~= nil then
        while true do
          local itemData = player.Functions.GetItemByName(Config.ProductOrangeWine)
          if itemData ~= nil then
            amountResources = amountResources + 1
            player.Functions.RemoveItem(Config.ProductOrangeWine, 1)
          else
            price = amountResources * Config.PriceOrangeWine
            break
          end
        end
        TriggerClientEvent('qb-farming:client:StartSell', src)
        player.Functions.AddMoney('cash', price)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.ProductOrangeWine], 'remove', amountResources)
        QBCore.Functions.Notify(src, amountResources..' Orange Wine sold for $'..price, 'success', 2000)
      else
        QBCore.Functions.Notify(src, Lang:t("error.No_OrangeWine"), 'error', 2000)
      end
    end
end)


-- Make Product Apple
RegisterNetEvent('qb-farming:server:MakeAppleProduct')
AddEventHandler('qb-farming:server:MakeAppleProduct', function(args)
  local src = source
  local player = QBCore.Functions.GetPlayer(src)
  local apple = Config.Apple
  local args = tonumber(args)
  if args == 1 then
    local AmountMaKeOnAppleJuice = 10
    if player.Functions.GetItemByName(apple) ~= nil and player.Functions.GetItemByName(apple).amount >= AmountMaKeOnAppleJuice then
      TriggerClientEvent('qb-farming:client:StartMake', src)
      player.Functions.RemoveItem(apple, AmountMaKeOnAppleJuice)
      player.Functions.AddItem(Config.ProductAppleJuice, 1)
      TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[apple], 'remove', AmountMaKeOnAppleJuice)
      TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.ProductAppleJuice], 'add', 1)
      QBCore.Functions.Notify(src, 'You have Add Apple Juice Inventory!', 'success', 2000)
    else
      QBCore.Functions.Notify(src, Lang:t("error.Make_AppleJuice"), "error",  2000)
    end
  elseif args == 2 then
    local AmountMaKeOnAppleWine = 25
    if player.Functions.GetItemByName(apple) ~= nil and player.Functions.GetItemByName(apple).amount >= AmountMaKeOnAppleWine then
      TriggerClientEvent('qb-farming:client:StartMake', src)
      player.Functions.RemoveItem(apple, AmountMaKeOnAppleWine)
      player.Functions.AddItem(Config.ProductAppleWine, 1)
      TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[apple], 'remove', AmountMaKeOnAppleWine)
      TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.ProductAppleWine], 'add', 1)
      QBCore.Functions.Notify(src, 'You have Add Apple Wine Inventory!', 'success', 2000)
    else
      QBCore.Functions.Notify(src, Lang:t("error.Make_AppleWine"), "error",  2000)
    end
  end
end)

-- Sell Apple Product
RegisterNetEvent('qb-farming:server:SellAppleProduct')
AddEventHandler('qb-farming:server:SellAppleProduct', function(args)
    local src = source
    local player = QBCore.Functions.GetPlayer(src)
    local price = 0
    local amountResources = 0
    local args = tonumber(args)
    if args == 1 then
      if player.Functions.GetItemByName(Config.ProductAppleJuice) ~= nil then
        while true do
          local itemData = player.Functions.GetItemByName(Config.ProductAppleJuice)
          if itemData ~= nil then
            amountResources = amountResources + 1
            player.Functions.RemoveItem(Config.ProductAppleJuice, 1)
          else
            price = amountResources * Config.PriceAppleJuice
            break
          end
        end
        TriggerClientEvent('qb-farming:client:StartSell', src)
        player.Functions.AddMoney('cash', price)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.ProductAppleJuice], 'remove', amountResources)
        QBCore.Functions.Notify(src, amountResources..' Apple Juice sold for $'..price, 'success', 2000)
      else
        QBCore.Functions.Notify(src, Lang:t("error.No_AppleJuice"), 'error', 2000)
      end
    elseif args == 2 then
      if player.Functions.GetItemByName(Config.ProductAppleWine) ~= nil then
        while true do
          local itemData = player.Functions.GetItemByName(Config.ProductAppleWine)
          if itemData ~= nil then
            amountResources = amountResources + 1
            player.Functions.RemoveItem(Config.ProductAppleWine , 1)
          else
            price = amountResources * Config.PriceAppleWine
            break
          end
        end
        TriggerClientEvent('qb-farming:client:StartSell', src)
        player.Functions.AddMoney('cash', price)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.ProductAppleWine], 'remove', amountResources)
        QBCore.Functions.Notify(src, amountResources..' Apple Wine sold for $'..price, 'success', 2000)
      else
        QBCore.Functions.Notify(src, Lang:t("error.No_AppleWine"), 'error', 2000)
      end
    end
end)

-- Make Product Gauva
RegisterNetEvent('qb-farming:server:MakeGauvaProduct')
AddEventHandler('qb-farming:server:MakeGauvaProduct', function(args)
  local src = source
  local player = QBCore.Functions.GetPlayer(src)
  local gauva = Config.Gauva
  local args = tonumber(args)
  if args == 1 then
    local AmountMaKeOnGauvaJuice = 10
    if player.Functions.GetItemByName(gauva) ~= nil and player.Functions.GetItemByName(gauva).amount >= AmountMaKeOnGauvaJuice then
      TriggerClientEvent('qb-farming:client:StartMake', src)
      player.Functions.RemoveItem(gauva, AmountMaKeOnGauvaJuice)
      player.Functions.AddItem(Config.ProductGauvaJuice, 1)
      TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[gauva], 'remove', AmountMaKeOnGauvaJuice)
      TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.ProductGauvaJuice], 'add', 1)
      QBCore.Functions.Notify(src, 'You have Add Gauva Juice Inventory!', 'success', 2000)
    else
      QBCore.Functions.Notify(src, Lang:t("error.Make_GauvaJuice"), "error",  2000)
    end
  elseif args == 2 then
    local AmountMaKeOnGauvaWine = 25
    if player.Functions.GetItemByName(gauva) ~= nil and player.Functions.GetItemByName(gauva).amount >= AmountMaKeOnGauvaWine then
      TriggerClientEvent('qb-farming:client:StartMake', src)
      player.Functions.RemoveItem(gauva, AmountMaKeOnGauvaWine)
      player.Functions.AddItem(Config.ProductGauvaWine, 1)
      TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[gauva], 'remove', AmountMaKeOnGauvaWine)
      TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.ProductGauvaWine], 'add', 1)
      QBCore.Functions.Notify(src, 'You have Add Gauva Wine Inventory!', 'success', 2000)
    else
      QBCore.Functions.Notify(src, Lang:t("error.Make_GauvaWine"), "error",  2000)
    end
  end
end)


-- Sell Gauva Product
RegisterNetEvent('qb-farming:server:SellGauvaProduct')
AddEventHandler('qb-farming:server:SellGauvaProduct', function(args)
    local src = source
    local player = QBCore.Functions.GetPlayer(src)
    local price = 0
    local amountResources = 0
    local args = tonumber(args)
    if args == 1 then
      if player.Functions.GetItemByName(Config.ProductGauvaJuice) ~= nil then
        while true do
          local itemData = player.Functions.GetItemByName(Config.ProductGauvaJuice)
          if itemData ~= nil then
            amountResources = amountResources + 1
            player.Functions.RemoveItem(Config.ProductGauvaJuice, 1)
          else
            price = amountResources * Config.PriceGauvaJuice
            break
          end
        end
        TriggerClientEvent('qb-farming:client:StartSell', src)
        player.Functions.AddMoney('cash', price)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.ProductGauvaJuice], 'remove', amountResources)
        QBCore.Functions.Notify(src, amountResources..' Gauva Juice sold for $'..price, 'success', 2000)
      else
        QBCore.Functions.Notify(src, Lang:t("error.No_GauvaJuice"), 'error', 2000)
      end
    elseif args == 2 then
      if player.Functions.GetItemByName(Config.ProductGauvaWine) ~= nil then
        while true do
          local itemData = player.Functions.GetItemByName(Config.ProductGauvaWine)
          if itemData ~= nil then
            amountResources = amountResources + 1
            player.Functions.RemoveItem(Config.ProductGauvaWine , 1)
          else
            price = amountResources * Config.PriceGauvaWine
            break
          end
        end
        TriggerClientEvent('qb-farming:client:StartSell', src)
        player.Functions.AddMoney('cash', price)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.ProductGauvaWine], 'remove', amountResources)
        QBCore.Functions.Notify(src, amountResources..' Gauva Wine sold for $'..price, 'success', 2000)
      else
        QBCore.Functions.Notify(src, Lang:t("error.No_GauvaWine"), 'error', 2000)
      end
    end
end)

-- Make Product Grapes
RegisterNetEvent('qb-farming:server:MakeGrapesProduct')
AddEventHandler('qb-farming:server:MakeGrapesProduct', function(args)
  local src = source
  local player = QBCore.Functions.GetPlayer(src)
  local grapes = Config.Grapes
  local args = tonumber(args)
  if args == 1 then
    local AmountMaKeOnGrapesJuice = 10
    if player.Functions.GetItemByName(grapes) ~= nil and player.Functions.GetItemByName(grapes).amount >= AmountMaKeOnGrapesJuice then
      TriggerClientEvent('qb-farming:client:StartMake', src)
      player.Functions.RemoveItem(grapes, AmountMaKeOnGrapesJuice)
      player.Functions.AddItem(Config.ProductGrapesJuice, 1)
      TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[grapes], 'remove', AmountMaKeOnGrapesJuice)
      TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.ProductGrapesJuice], 'add', 1)
      QBCore.Functions.Notify(src, 'You have Add Gauva Juice Inventory!', 'success', 2000)
    else
      QBCore.Functions.Notify(src, Lang:t("error.Make_GrapesJuice"), "error",  2000)
    end
  elseif args == 2 then
    local AmountMaKeOnGrapesWine = 25
    if player.Functions.GetItemByName(grapes) ~= nil and player.Functions.GetItemByName(grapes).amount >= AmountMaKeOnGrapesWine then
      TriggerClientEvent('qb-farming:client:StartMake', src)
      player.Functions.RemoveItem(grapes, AmountMaKeOnGrapesWine)
      player.Functions.AddItem(Config.ProductGrapesWine, 1)
      TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[grapes], 'remove', AmountMaKeOnGrapesWine)
      TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.ProductGrapesWine], 'add', 1)
      QBCore.Functions.Notify(src, 'You have Add Grapes Wine Inventory!', 'success', 2000)
    else
      QBCore.Functions.Notify(src, Lang:t("error.Make_GrapesWine"), "error",  2000)
    end
  end
end)


-- Sell Grapes Product
RegisterNetEvent('qb-farming:server:SellGrapesProduct')
AddEventHandler('qb-farming:server:SellGrapesProduct', function(args)
    local src = source
    local player = QBCore.Functions.GetPlayer(src)
    local price = 0
    local amountResources = 0
    local args = tonumber(args)
    if args == 1 then
      if player.Functions.GetItemByName(Config.ProductGrapesJuice) ~= nil then
        while true do
          local itemData = player.Functions.GetItemByName(Config.ProductGrapesJuice)
          if itemData ~= nil then
            amountResources = amountResources + 1
            player.Functions.RemoveItem(Config.ProductGrapesJuice, 1)
          else
            price = amountResources * Config.PriceGrapesJuice
            break
          end
        end
        TriggerClientEvent('qb-farming:client:StartSell', src)
        player.Functions.AddMoney('cash', price)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.ProductGrapesJuice], 'remove', amountResources)
        QBCore.Functions.Notify(src, amountResources..' Gauva Juice sold for $'..price, 'success', 2000)
      else
        QBCore.Functions.Notify(src, Lang:t("error.No_GrapesJuice"), 'error', 2000)
      end
    elseif args == 2 then
      if player.Functions.GetItemByName(Config.ProductGrapesWine) ~= nil then
        while true do
          local itemData = player.Functions.GetItemByName(Config.ProductGrapesWine)
          if itemData ~= nil then
            amountResources = amountResources + 1
            player.Functions.RemoveItem(Config.ProductGrapesWine , 1)
          else
            price = amountResources * Config.PriceGrapesWine
            break
          end
        end
        TriggerClientEvent('qb-farming:client:StartSell', src)
        player.Functions.AddMoney('cash', price)
        TriggerClientEvent('inventory:client:ItemBox', src, QBCore.Shared.Items[Config.ProductGrapesWine], 'remove', amountResources)
        QBCore.Functions.Notify(src, amountResources..' Grapes Wine sold for $'..price, 'success', 2000)
      else
        QBCore.Functions.Notify(src, Lang:t("error.No_GrapesWine"), 'error', 2000)
      end
    end
end)

AddEventHandler('onResourceStart', function(resourceName)
  if (GetCurrentResourceName() ~= resourceName) then
      return
  end
  print("---------------------------------------------------------------------------------------------")
  print("       ^Github ^5 --> ^https://github.com/Gjayz         "," ^Author Gjayz")
  print("       ^Main Github ^5 --> ^https://github.com/gjayz099         ","QB-Core Farming Job")
  print("---------------------------------------------------------------------------------------------")
end)