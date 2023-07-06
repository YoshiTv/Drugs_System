Config = {}

Config.RaccoltaRicevere = 1

Config.ProcessoRimuovere = 3

Config.ProcessoRicevere = 1

Config.ItemRicevere = {
    raccolta = 'cimetta',
    processo = 'cimettaproc',
    togliere = 'cimetta'
}

Config.Raccolta = {
    grid = vector3(-105.8950, 1910.1895, 196.9597),
    msg = 'Raccogli Droga',
    type = 2,
    show3d = false, -- FALSE SE SI VUOLE L'IMMAGINE DELL'AUTO, TRUE SE SI VUOLE SOLO LA SCITTA
    colorgrid = { r = 255, g = 133, b = 60},
    control = 'E',
    progressraccolta = 5000, -- 120 Seconds = 120000, 180 Seconds = 180000, 200 Seconds = 200000
    messaggio = 'Raccogliendo Cimette',
    posizione = 'middle', -- middle or bottom
    coords = vector3(-105.8950, 1910.1895, 196.9597),
    sprite = 496,
    scale = 0.8,
    colour = 25,
    text = "Raccolta Droga"
}

Config.Processo = {
    grid = vector3(1524.7157, 1710.5682, 110.0056),
    msg = 'Processa Droga',
    type = 2,
    show3d = false, -- FALSE SE SI VUOLE L'IMMAGINE DELL'AUTO, TRUE SE SI VUOLE SOLO LA SCITTA
    colorgrid = { r = 255, g = 133, b = 60},
    control = 'E',
    progressraccolta = 5000, -- 120 Seconds = 120000, 180 Seconds = 180000, 200 Seconds = 200000
    messaggio = 'Processando Cimette',
    posizione = 'middle', -- middle or bottom
    coords = vector3(1524.5834, 1710.1182, 110.0159),
    sprite = 514,
    scale = 0.8,
    colour = 25,
    text = "Processo Droga"
}



