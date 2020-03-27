for(i=0;i<150;i++){
    if(i<10){
    fileTif = "man_track00"+i+".tif";}
    else if(i<100){
    fileTif = "man_track0"+i+".tif";}
    else{
    fileTif = "man_track"+i+".tif";}
    open("C:/Users/cool_/Documents/Representacao_e_armazenamento_de_dados_biologicos_em_bases_espaco-temporais/Datasets/TrackingChallenge/Fluo-N2DH-SIM+/02_GT/TRA/"+fileTif);
    run("8-bit");
    run("Auto Threshold...", "method=Mean");
    setOption("BlackBackground", true);
        run("Convert to Mask");
        setAutoThreshold("Default dark");
        saveAs("Tiff", "C:/Users/cool_/Documents/Representacao_e_armazenamento_de_dados_biologicos_em_bases_espaco-temporais/Datasets/TrackingChallenge/Fluo-N2DH-SIM+/02_GT/TRA/segmented//Mean0/"+fileTif);
    close();
    }
    