for(i=0;i<65;i++){
    if(i<10){
    fileTif = "frame00"+i+".tif";}
    else if(i<100){
    fileTif = "frame0"+i+".tif";}
    else{
    fileTif = "frame"+i+".tif";}
    open("../Datasets/TrackingChallenge/Fluo-N2DH-SIM+/01_GT/TRA"+fileTif);
    run("8-bit");
    run("Auto Threshold...", "method=Mean");
    setOption("BlackBackground", true);
        run("Convert to Mask");
        setAutoThreshold("Default dark");
        saveAs("Tiff", "../DDatasets/TrackingChallenge/Fluo-N2DH-SIM+/01_GT/TRA/segmented//Mean0/"+fileTif);
    close();
    }
    