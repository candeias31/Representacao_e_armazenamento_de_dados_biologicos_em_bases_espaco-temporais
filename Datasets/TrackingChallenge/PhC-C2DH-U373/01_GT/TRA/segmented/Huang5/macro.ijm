for(i=0;i<115;i++){
    if(i<10){
    fileTif = "t00"+i+".tif";}
    else if(i<100){
    fileTif = "t0"+i+".tif";}
    else{
    fileTif = "t"+i+".tif";}
    open("../Datasets/TrackingChallenge/PhC-C2DH-U373/01/"+fileTif);
    run("8-bit");
    run("Auto Threshold...", "method=Huang");
    setOption("BlackBackground", true);
        run("Convert to Mask");
        run("Close-");
run("Open");
setAutoThreshold("Default dark");
        saveAs("Tiff", "../Datasets/TrackingChallenge/PhC-C2DH-U373/01_GT/TRA/segmented//Huang5/"+fileTif);
    close();
    }
    