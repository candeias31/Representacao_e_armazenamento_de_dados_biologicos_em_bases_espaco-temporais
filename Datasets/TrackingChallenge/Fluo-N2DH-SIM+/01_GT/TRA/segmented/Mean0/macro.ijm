for(i=0;i<65;i++){
    if(i<10){
    fileTif = "man_track00"+i+".tif";}
    else if(i<100){
    fileTif = "man_track0"+i+".tif";}
    else{
    fileTif = "man_track"+i+".tif";}
    open("../Datasets/TrackingChallenge/Fluo-N2DH-SIM+/01_GT/TRA"+fileTif);
    run("8-bit");
    run("Auto Threshold...", "method=Mean");
    setOption("BlackBackground", true);
        run("Convert to Mask");
        setAutoThreshold("Default dark");
        saveAs("Tiff", "../Datasets/TrackingChallenge/Fluo-N2DH-SIM+/01_GT/TRA/segmented//Mean0/"+fileTif);
    close();
    }
    