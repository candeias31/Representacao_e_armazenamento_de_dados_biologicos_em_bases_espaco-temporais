for(i=0;i<92;i++){
    if(i<10){
    fileTif = "t00"+i+".tif";}
    else if(i<100){
    fileTif = "t0"+i+".tif";}
    else{
    fileTif = "t"+i+".tif";}
    open("../Datasets/TrackingChallenge/Fluo-N2DH-GOWT1/01/"+fileTif);
    run("8-bit");
    run("Auto Threshold...", "method=Li");
    setOption("BlackBackground", true);
        run("Convert to Mask");
        run("Close-");
run("Open");
setAutoThreshold("Default dark");
        saveAs("Tiff", "../Datasets/TrackingChallenge/Fluo-N2DH-GOWT1/01_GT/TRA/segmented//Li5/"+fileTif);
    close();
    }
    