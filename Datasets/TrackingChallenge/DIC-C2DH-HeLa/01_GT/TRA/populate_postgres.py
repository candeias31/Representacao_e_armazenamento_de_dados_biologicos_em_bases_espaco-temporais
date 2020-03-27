import psycopg2
import os
import re
def LoadVideoFrames(pHost, pDatabase, pUser, pPwd):
    conn = None
    try:
   
        # connect to the PostgreSQL server
        print('Connecting to the PostgreSQL database...')
        conn = psycopg2.connect(host=pHost,port=5434,database=pDatabase, user=pUser, password=pPwd)
     
        # create a cursor
        cur = conn.cursor()
       
        # execute a statement
        print('PostgreSQL connected')
   
        #cur.execute("delete from mytable where name = '" + pObjectName + "'");
   
        allLines = []
        time = 0
        path = 'man_track/'
       
        fileList = os.listdir(path)
        for file in fileList:
            time = file.replace('.wkt', '').replace('interpolation', '')
            print(path + file)
            with open(path + file) as f:
                print(f)
                for line in f:
                    lineTmp = line.split(',');
                    pol = line[:-3]+','+lineTmp[0][9:]+line[-3:];
                    if (line.startswith('POLYGON')):
                        command = "insert into lifetime values (%d,%d,ST_RotateY('%s',pi()))" % (int(time),int('0'),pol);
                        #print (command)
                        cur.execute(command);
                    else:
                        print(time);
                   
         
        # close the communication with the PostgreSQL
        cur.close()
        conn.commit()
   
    except (Exception, psycopg2.DatabaseError) as error:
        print(error)
    finally:
        if conn is not None:
       
            conn.close()
            print('Database connection closed.')
 
LoadVideoFrames("localhost","DIC-C2DH-HeLa-1","postgres","pokeralho")