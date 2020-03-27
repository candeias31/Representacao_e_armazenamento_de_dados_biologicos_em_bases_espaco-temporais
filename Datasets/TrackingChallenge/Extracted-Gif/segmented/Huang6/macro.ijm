for(i=0;i<90;i++){
    if(i<10){
    fileTif = "frame00"+i+".tif";}
    else if(i<100){
    fileTif = "frame0"+i+".tif";}
    else{
    fileTif = "frame"+i+".tif";}
    open("../Datasets/TrackingChallenge/Extracted-Gif/dataset/"+fileTif);
    run("8-bit");
    run("Auto Threshold...", "method=Huang");
    setOption("BlackBackground", true);
        run("Convert to Mask");
        run("Open");
run("Close-");
setAutoThreshold("Default dark");
        saveAs("Tiff", "../Datasets/TrackingChallenge/Extracted-Gif/segmented//Huang6/"+fileTif);
    close();
    }
    