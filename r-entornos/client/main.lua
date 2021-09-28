ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject',function(obj)
            ESX = obj
        end)
    end
end)

RegisterKeyMapping('MenuEntornos', 'Mostrar menu de entornos', 'keyboard', 'F10')

RegisterCommand('MenuEntornos', function()
    MenuEntornos()
end)

function MenuEntornos()

	ESX.UI.Menu.CloseAll()
    ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'entornos',
        {
            title    = 'Menu de entornos',
            align    = 'bottom-right',
            elements = {
			{label = 'Entorno Tiroteo', value = 'tiroteo'},
			{label = 'Entorno Pelea', value = 'pelea'},
            {label = 'Entorno Droga', value = 'droga'},
			{label = 'Entorno Velocidad', value = 'velocidad'},
			}
        },
        function(data, menu)
        if data.current.value == 'tiroteo' then
            OpenMenu()
        elseif data.current.value == 'pelea' then
            OpenMenu2()
        elseif data.current.value == 'droga' then
            OpenMenu3()
        elseif data.current.value == 'velocidad' then
            OpenMenu4()
        end
      end, function(data, menu)
          menu.close()
    end)
end

function OpenMenu()

	ESX.UI.Menu.CloseAll()
    ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'entornos',
        {
            title    = 'Menu de entornos',
            align    = 'bottom-right',
            elements = {
			{label = '<span style = color:green; span>Aceptar</span>', value = 'aceptar'},
			{label = '<span style = color:red; span>Cancelar</span>', value = 'denegar'},
			}
        },
        function(data, menu)
        if data.current.value == 'aceptar' then
            ExecuteCommand('entorno ¿Policía? Acabo de ver a varios individuos tirotearse. Necesito que vengais!')
            menu.close()
        elseif data.current.value == 'denegar' then
            MenuEntornos()
        end
      end, function(data, menu)
        MenuEntornos()
    end)
end

function OpenMenu2()

	ESX.UI.Menu.CloseAll()
    ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'entornos',
        {
            title    = 'Menu de entornos',
            align    = 'bottom-right',
            elements = {
			{label = '<span style = color:green; span>Aceptar</span>', value = 'aceptar'},
			{label = '<span style = color:red; span>Cancelar</span>', value = 'denegar'},
			}
        },
        function(data, menu)
        if data.current.value == 'aceptar' then
            ExecuteCommand('entorno ¿Policía? Estoy viendo a gente pelearse. Ayuda porfavor necesito que vengais!')
            menu.close()
        elseif data.current.value == 'denegar' then
            MenuEntornos()
        end
      end, function(data, menu)
        MenuEntornos()
    end)
end

function OpenMenu3()

	ESX.UI.Menu.CloseAll()
    ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'entornos',
        {
            title    = 'Menu de entornos',
            align    = 'bottom-right',
            elements = {
			{label = '<span style = color:green; span>Aceptar</span>', value = 'aceptar'},
			{label = '<span style = color:red; span>Cancelar</span>', value = 'denegar'},
			}
        },
        function(data, menu)
        if data.current.value == 'aceptar' then
            ExecuteCommand('entorno ¿Policía? Me acaban de intentar vender droga por esta zona. Necesito que vengais!')
            menu.close()
        elseif data.current.value == 'denegar' then
            MenuEntornos()
        end
      end, function(data, menu)
        MenuEntornos()
    end)
end

function OpenMenu4()

	ESX.UI.Menu.CloseAll()
    ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'entornos',
        {
            title    = 'Menu de entornos',
            align    = 'bottom-right',
            elements = {
			{label = '<span style = color:green; span>Aceptar</span>', value = 'aceptar'},
			{label = '<span style = color:red; span>Cancelar</span>', value = 'denegar'},
			}
        },
        function(data, menu)
        if data.current.value == 'aceptar' then
            ExecuteCommand('entorno ¿Policía? Acabo de ver a un vehiculo a altas velocidades. Necesito ue vengais!')
            menu.close()
        elseif data.current.value == 'denegar' then
            MenuEntornos()
        end
      end, function(data, menu)
        MenuEntornos()
    end)
end

-- Citizen.CreateThread(function()
--     while true do
--         Citizen.Wait(0)
--         if IsControlJustReleased(0,  121) then
--             -- print("Abre el Menu")
--             OpenMenuR()
--         end

--         Citizen.Wait(0)
--     end
-- end)

-- CREDITS

local autor = '.root#2746'
local resources = GetNumResources()
local wait = 0

print('Resource echo por : ^5'..autor..'')
print('El Wait esta a : ^5' ..wait.. '^7 no cambiarlos, podria romper el resource. En tu servidor con este script hay : ' ..resources.. ' resources')