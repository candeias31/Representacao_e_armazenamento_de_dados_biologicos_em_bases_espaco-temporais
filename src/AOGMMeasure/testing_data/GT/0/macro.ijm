for(i=0;i<7;i++){
    if(i<10){
    fileTif = "man_track00"+i+".tif";}
    else if(i<100){
    fileTif = "man_track0"+i+".tif";}
    else{
    fileTif = "man_track"+i+".tif";}
    open("../src/AOGMMeasure/testing_data/GT/"+fileTif);
    run("8-bit");saveAs("Tiff", "../src/AOGMMeasure/testing_data/GT//0/"+fileTif);
    close();
    }
    