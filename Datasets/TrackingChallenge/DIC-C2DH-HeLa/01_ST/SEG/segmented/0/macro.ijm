for(i=0;i<48;i++){
    if(i<10){
    fileTif = "man_seg00"+i+".tif";}
    else if(i<100){
    fileTif = "man_seg0"+i+".tif";}
    else{
    fileTif = "man_seg"+i+".tif";}
    open("../Datasets/TrackingChallenge/DIC-C2DH-HeLa/01_ST/SEG/"+fileTif);
    run("8-bit");saveAs("Tiff", "../Datasets/TrackingChallenge/DIC-C2DH-HeLa/01_ST/SEG/segmented//0/"+fileTif);
    close();
    }
    