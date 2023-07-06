ESX = exports["es_extended"]:getSharedObject()
-------------------------------------------------------------------------------------------------
------------------------------------ BLIP RACCOLTA ----------------------------------------------
-------------------------------------------------------------------------------------------------
raccolta = AddBlipForCoord(Config.Raccolta.coords)
SetBlipSprite(raccolta, Config.Raccolta.sprite)
SetBlipScale(raccolta, Config.Raccolta.scale)
SetBlipColour(raccolta, Config.Raccolta.color)
BeginTextCommandSetBlipName("STRING")
AddTextComponentString(Config.Raccolta.text)
EndTextCommandSetBlipName(raccolta)
-------------------------------------------------------------------------------------------------
----------------------------------------- RACCOLTA ----------------------------------------------
-------------------------------------------------------------------------------------------------
TriggerEvent('gridsystem:registerMarker', {
	name = 'raccoglidroga',
	pos = Config.Raccolta.grid,
	scale = vector3(0.4, 0.4, 0.4),
	size = vector3(2.0, 2.0, 2.0),
	msg = Config.Raccolta.msg,
	type = Config.Raccolta.type,
    show3D = Config.Raccolta.show3d,
    color =  Config.Raccolta.colorgrid,
    drawDistance = 38.0,
	control = Config.Raccolta.control,
	action = function()
    if lib.progressCircle({
      duration = Config.Raccolta.progressraccolta,
      label = Config.Raccolta.messaggio,
      position = Config.Raccolta.posizione,
      useWhileDead = false,
      canCancel = true,
      anim = {
        dict = 'mini@repair',
        clip = 'fixing_a_ped',
      },
    }) then TriggerServerEvent('raccolta', Config.RaccoltaRicevere) end
    ESX.ShowNotification("Hai raccolto una "..Config.ItemRicevere.raccolta.."")
  end
})
-------------------------------------------------------------------------------------------------
------------------------------------ BLIP RACCOLTA ----------------------------------------------
-------------------------------------------------------------------------------------------------
processo = AddBlipForCoord(Config.Processo.coords)
SetBlipSprite(processo, Config.Processo.sprite)
SetBlipScale(processo, Config.Processo.scale)
SetBlipColour(processo, Config.Processo.color)
BeginTextCommandSetBlipName("STRING")
AddTextComponentString(Config.Processo.text)
EndTextCommandSetBlipName(processo)
-------------------------------------------------------------------------------------------------
----------------------------------------- PROCESSO ----------------------------------------------
-------------------------------------------------------------------------------------------------
TriggerEvent('gridsystem:registerMarker', {
	name = 'processadroga',
	pos = Config.Processo.grid,
	scale = vector3(0.4, 0.4, 0.4),
	size = vector3(2.0, 2.0, 2.0),
	msg = Config.Processo.msg,
	type = Config.Processo.Type,
    show3D = Config.Processo.Show3D,
    color =  Config.Processo.colorgrid,
    drawDistance = 38.0,
	control = Config.Processo.Control,
	action = function()
    local cimette = exports.ox_inventory:Search('count', Config.ItemRicevere.togliere)
    if cimette >= 3 then
      if lib.progressCircle({
        duration = Config.Processo.progressraccolta,
        label = Config.Processo.messaggio,
        position = Config.Processo.posizione,
        useWhileDead = false,
        canCancel = true,
        anim = {
          dict = 'mini@repair',
          clip = 'fixing_a_ped',
        },
      }) then TriggerServerEvent('processo', 3) end
      ESX.ShowNotification("Hai raccolto una "..Config.ItemRicevere.processo.." cimette")
    else
      ESX.ShowNotification("Non hai abbastanza cimette da processare")
    end
  end
})
-------------------------------------------------------------------------------------------------
------------------------------------ BLIP VENDITA -----------------------------------------------
-------------------------------------------------------------------------------------------------