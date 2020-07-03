for(i=0;i<92;i++){
    if(i<10){
    fileTif = "man_seg00"+i+".tif";}
    else if(i<100){
    fileTif = "man_seg0"+i+".tif";}
    else{
    fileTif = "man_seg"+i+".tif";}
    open("../Datasets/TrackingChallenge/Fluo-N2DL-HeLa/01_ST/SEG/"+fileTif);
    run("8-bit");saveAs("Tiff", "../Datasets/TrackingChallenge/Fluo-N2DL-HeLa/01_ST/SEG/segmented//0/"+fileTif);
    close();
    }
    