for(i=0;i<90;i++){
    if(i<10){
    fileTif = "frame00"+i+".tif";}
    else if(i<100){
    fileTif = "frame0"+i+".tif";}
    else{
    fileTif = "frame"+i+".tif";}
    open("C:/Users/cool_/Documents/Representacao_e_armazenamento_de_dados_biologicos_em_bases_espaco-temporais/Datasets/TrackingChallenge/Extracted-Gif/dataset/"+fileTif);
    run("8-bit");
    run("Auto Threshold...", "method=Huang");
    setOption("BlackBackground", true);
        run("Convert to Mask");
        run("Close-");  
    run("Open");  
    setAutoThreshold("Default dark");
        saveAs("Tiff", "C:/Users/cool_/Documents/Representacao_e_armazenamento_de_dados_biologicos_em_bases_espaco-temporais/Datasets/TrackingChallenge/Extracted-Gif/segmented//Huang5/"+fileTif);
    close();
    }
    