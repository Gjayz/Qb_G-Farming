Config = Config or {}


Config.UseBlips = true       
Config.UseTarget = true

-- Object Name
Config.Tomato = "tomato"
Config.Rice = "rice"
Config.Pepper = "redpepper"
Config.Eggplant = "eggplant"
Config.Mango = "mango"
Config.Orange = "orange"
Config.Apple = "apple"
Config.Gauva = "gauva"
Config.Grapes = "grapesred"

--Price
Config.TomatoPrice = 5
Config.RicePrice = 3
Config.PepperPrice = 5
Config.EggplantPrice = 10
Config.MangoPrice = 10
Config.OrangePrice = 10
Config.ApplePrice = 10
Config.GauvaPrice = 10
Config.GrapesPrice = 10

--Object Amount Pick
Config.PickAmountTomato = math.random(3, 5)
Config.PickAmountRice = math.random(5, 10)
Config.PickAmountPepper = math.random(3, 5)
Config.PickAmountEggplant = math.random(1,2)
Config.PickAmountMango = 1
Config.PickAmountOrange = 1
Config.PickAmountApple = 1
Config.PickAmountGauva = 1
Config.PickAmountGrapes = math.random(1,2)

-- Pruduct Name Tomato
Config.ProductKitchup = 'tomato_ketchup'
Config.ProductPaste = 'tomato_paste'
Config.ProductSouce = 'tomato_souce'

--- Product Rice
Config.ProductSackRice = 'ricesack'

--- Product Pepper
Config.ProductGroundPepper = 'groundpepper'
Config.ProductSweetRedPepper = 'sweetredpapper'
--- Product Pepper
Config.ProductGrilledEggplant = 'grilled_eggplant'
--- Product Mango
Config.ProductMangoJuice = "mangojuice"
Config.ProductMangoWine = "mangowine"
--- Product Orange
Config.ProductOrangeJuice = "orangejuice"
Config.ProductOrangeWine = "orangewine"
--- Product Apple
Config.ProductAppleJuice = "applejuice"
Config.ProductAppleWine = "applewine"
--- Product Gauva
Config.ProductGauvaJuice = "gauvajuice"
Config.ProductGauvaWine = "gauvawine"
--- Product Grapes
Config.ProductGrapesJuice = "grapejuice"
Config.ProductGrapesWine = "grapeswine"

-- Pruduct Price Tomato
Config.PriceKetchup = 70
Config.PricePaste = 95
Config.PriceSouce = 55

-- Pruduct Price Rice
Config.PriceKetchup = 400

-- Pruduct Price Pepper
Config.PriceGroundPepper = 95
Config.PriceSweetRedPepper = 120

-- Pruduct Price Pepper
Config.PriceGrilledEggplant = 175

-- Pruduct Price Mango
Config.PriceMangoJuice = 130
Config.PriceMangowWine = 285

-- Pruduct Price Orange
Config.PriceOrangeJuice = 130
Config.PriceOrangeWine = 285

-- Pruduct Price Apple
Config.PriceAppleJuice = 130
Config.PriceAppleWine = 285

-- Pruduct Price Gauva
Config.PriceGauvaJuice = 130
Config.PriceGauvaWine = 285

-- Pruduct Price Grapes
Config.PriceGrapesJuice = 130
Config.PriceGrapesWine = 285


-- Blips All
Config.Allblips = {
    [1] = {
        coords = vector4(1797.3, 4985.68, 50.44, 46.66),
        SetBlipSprite = 738,
        SetBlipDisplay = 6,
        SetBlipScale = 0.70,
        SetBlipColour = 9,
        BlipName = "Tomato Farm",
    },
    [2] = {
        coords = vector4(1876.93, 5057.98, 51.38, 63.76),
        SetBlipSprite = 738,
        SetBlipDisplay = 6,
        SetBlipScale = 0.70,
        SetBlipColour = 9,
        BlipName = "Tomato Farm",
    },
    [3] = {
        coords = vector4(2221.08, 5077.19, 48.3, 134.12),
        SetBlipSprite = 738,
        SetBlipDisplay = 6,
        SetBlipScale = 0.70,
        SetBlipColour = 28,
        BlipName = "Rice Farm",
    },
    [4] = {
        coords = vector4(1908.58, 5003.45, 46.25, 309.33),
        SetBlipSprite = 738,
        SetBlipDisplay = 6,
        SetBlipScale = 0.70,
        SetBlipColour = 1,
        BlipName = "Red Pepper Farm",
    },
    [5] = {
        coords = vector4(1931.38, 4892.4, 46.85, 45.08),
        SetBlipSprite = 738,
        SetBlipDisplay = 6,
        SetBlipScale = 0.70,
        SetBlipColour = 1,
        BlipName = "Red Pepper Farm",
    },
    [6] = {
        coords = vector4(1907.4, 4837.8, 46.31, 312.72),
        SetBlipSprite = 738,
        SetBlipDisplay = 6,
        SetBlipScale = 0.70,
        SetBlipColour = 83,
        BlipName = "Eggplant Farm",
    },
    [7] = {
        coords = vector4(2346.2, 4997.89, 42.58, 101.85),
        SetBlipSprite = 738,
        SetBlipDisplay = 6,
        SetBlipScale = 0.70,
        SetBlipColour = 46,
        BlipName = "Mango Farm",
    },
    [8] = {
        coords = vector4(2377.7, 4719.47, 33.03, 251.49),
        SetBlipSprite = 738,
        SetBlipDisplay = 6,
        SetBlipScale = 0.70,
        SetBlipColour = 81,
        BlipName = "Orange Farm",
    },
    [9] = {
        coords = vector4(234.76, 6514.49, 31.23, 106.03),
        SetBlipSprite = 738,
        SetBlipDisplay = 6,
        SetBlipScale = 0.70,
        SetBlipColour = 49,
        BlipName = "Mango Farm",
    },
    [10] = {
        coords = vector4(352.23, 6518.87, 28.47, 275.22),
        SetBlipSprite = 738,
        SetBlipDisplay = 6,
        SetBlipScale = 0.70,
        SetBlipColour = 43,
        BlipName = "Gauva Farm",
    },
    [11] = {
        coords = vector4(1984.96, 4826.66, 43.85, 203.65),
        SetBlipSprite = 738,
        SetBlipDisplay = 6,
        SetBlipScale = 0.70,
        SetBlipColour = 58,
        BlipName = "Grapes Farm",
    },
    [12] = {
        coords = vector4(2588.29, 3168.83, 51.16, 322.5),
        SetBlipSprite = 569,
        SetBlipDisplay = 6,
        SetBlipScale = 0.70,
        SetBlipColour = 26,
        BlipName = "Product Maker",
    },
    [13] = {
        coords = vector4(84.16, 190.54, 105.26, 247.13),
        SetBlipSprite = 431,
        SetBlipDisplay = 6,
        SetBlipScale = 0.70,
        SetBlipColour = 26,
        BlipName = "Product Seller",
    }

}



Config.PedLocation = {
    -- Food Maker
    [1] = {
        coords = vector4(2588.46, 3167.98, 51.37, 324.72),
        model = 'a_m_m_hillbilly_01',
        scenario = 'WORLD_HUMAN_CLIPBOARD',
    },
    [2] = {
        coords = vector4(84.02, 190.81, 105.27, 248.89),
        model = 'a_m_m_golfer_01',
        scenario = 'WORLD_HUMAN_CLIPBOARD',
    },
}



---- all Zone
Config.ZoneGarden = {
    {
        --Tomato Zone 1
        zones = {
            vector2(1838.5968017578, 4992.8784179688),
            vector2(1779.7966308594, 4942.8315429688),
            vector2(1747.7073974609, 4980.3227539062),
            vector2(1805.4130859375, 5028.77734375)
        },
        minZ = 43.225967407227,
        maxZ = 58.535160064697
    },
    {
        --Tomato Zone 2
        zones = {
            vector2(1824.8934326172, 5046.4174804688),
            vector2(1912.9936523438, 5119.0961914062),
            vector2(1943.5966796875, 5082.7221679688),
            vector2(1857.6112060547, 5009.2431640625)
        },
        minZ = 41.301795959473,
        maxZ = 58.919654846191
    },
    {
        --Rice Zone
        zones = {
            vector2(2173.0424804688, 5095.4765625),
            vector2(2237.4626464844, 5030.123046875),
            vector2(2245.4516601562, 5038.3666992188),
            vector2(2258.9975585938, 5024.5649414062),
            vector2(2281.2243652344, 5047.1215820312),
            vector2(2203.6098632812, 5124.5297851562)
        },
        minZ = 43.59939956665,
        maxZ = 52.067932128906
    },
    {
        --Red Pepper Zone 1
        zones = {
            vector2(1874.0941162109, 4994.7221679688),
            vector2(1880.6235351562, 4992.42578125),
            vector2(1891.7174072266, 4979.1997070312),
            vector2(1896.0830078125, 4979.1572265625),
            vector2(1900.0784912109, 4975.6831054688),
            vector2(1940.3544921875, 5009.7075195312),
            vector2(1939.0883789062, 5014.0869140625),
            vector2(1936.9174804688, 5022.287109375),
            vector2(1894.7192382812, 4996.9619140625),
            vector2(1881.4515380859, 5001.353515625)
        },
        minZ = 42.390869140625,
        maxZ = 52.836112976074

    },
    {
        --Red Pepper Zone 2
        zones = {
            vector2(1955.3542480469, 4898.2109375),
            vector2(1950.9617919922, 4893.3486328125),
            vector2(1953.8807373047, 4890.3935546875),
            vector2(1944.1918945312, 4882.4965820312),
            vector2(1925.9725341797, 4899.2802734375),
            vector2(1922.7586669922, 4896.5224609375),
            vector2(1917.3830566406, 4890.7241210938),
            vector2(1936.2359619141, 4869.8872070312),
            vector2(1928.4748535156, 4861.6962890625),
            vector2(1901.0708007812, 4888.6708984375),
            vector2(1914.5052490234, 4904.7954101562),
            vector2(1923.9715576172, 4913.2456054688),
            vector2(1930.6123046875, 4906.27734375),
            vector2(1938.9852294922, 4914.6987304688)
        },
        minZ = 45.000160217285,
        maxZ = 48.134792327881

    },
    {
        --EggPlant Zone
        zones = {
            vector2(1919.9371337891, 4801.1474609375),
            vector2(1937.9602050781, 4818.2451171875),
            vector2(1931.9656982422, 4824.8911132812),
            vector2(1935.5715332031, 4829.4658203125),
            vector2(1894.2281494141, 4869.28125),
            vector2(1882.6751708984, 4857.6977539062),
            vector2(1888.1580810547, 4852.484375),
            vector2(1884.3663330078, 4846.908203125),
            vector2(1878.3443603516, 4852.5361328125),
            vector2(1873.958984375, 4849.7001953125)
        },
        minZ = 44.203769683838,
        maxZ = 46.252738952637

    },
    {
        --Mango Zone
        zones = {
            vector2(2331.6228027344, 5041.1235351562),
            vector2(2343.1293945312, 5037.3774414062),
            vector2(2345.2702636719, 5024.9829101562),
            vector2(2377.546875, 5019.3022460938),
            vector2(2391.2087402344, 5006.1162109375),
            vector2(2393.15234375, 4992.1928710938),
            vector2(2390.294921875, 4989.1640625),
            vector2(2375.5563964844, 4985.9775390625),
            vector2(2364.2600097656, 4973.671875),
            vector2(2336.1149902344, 4972.8857421875),
            vector2(2315.1806640625, 4982.1791992188),
            vector2(2301.4130859375, 4996.51953125),
            vector2(2311.7785644531, 5024.9301757812)
        },
        minZ = 41.758281707764,
        maxZ = 45.800640106201
    },
    {
        --Orange Zone
        zones = {
            vector2(2446.5112304688, 4671.3852539062),
            vector2(2425.4458007812, 4688.5087890625),
            vector2(2427.0241699219, 4699.2153320312),
            vector2(2403.546875, 4719.095703125),
            vector2(2388.451171875, 4737.8666992188),
            vector2(2368.650390625, 4753.9106445312),
            vector2(2354.8361816406, 4762.5830078125),
            vector2(2339.6267089844, 4770.2963867188),
            vector2(2326.2065429688, 4773.4057617188),
            vector2(2322.0024414062, 4745.5297851562),
            vector2(2337.8029785156, 4738.7172851562),
            vector2(2380.8471679688, 4697.9501953125),
            vector2(2405.8234863281, 4674.25390625),
            vector2(2426.2707519531, 4656.1254882812)
        },
        minZ = 33.085071563721,
        maxZ = 36.264991760254
    },
    {
        --Apple Zone
        zones = {
            vector2(181.88417053223, 6498.4775390625),
            vector2(196.72972106934, 6509.4072265625),
            vector2(223.02783203125, 6525.986328125),
            vector2(282.89926147461, 6534.396484375),
            vector2(285.15689086914, 6506.0190429688),
            vector2(257.60681152344, 6501.689453125),
            vector2(187.25387573242, 6493.2978515625)
        },
        minZ = 30.019117355347,
        maxZ = 31.542652130127
    },
    {
        --Gauva Zone
        zones = {
            vector2(320.35650634766, 6533.0087890625),
            vector2(371.96450805664, 6533.6318359375),
            vector2(380.49197387695, 6517.5473632812),
            vector2(379.74703979492, 6503.4711914062),
            vector2(320.76974487305, 6503.4326171875)
        },
        minZ = 28.00590133667,
        maxZ = 29.240970611572
    },
    {
        --Grapes Zone
        zones = {
            vector2(1961.1356201172, 4827.0385742188),
            vector2(1990.1362304688, 4853.416015625),
            vector2(2012.6898193359, 4829.548828125),
            vector2(2005.7897949219, 4818.3911132812),
            vector2(1986.6029052734, 4800.7846679688)
        },
        minZ = 42.273284912109,
        maxZ = 44.010715484619
    },

}

