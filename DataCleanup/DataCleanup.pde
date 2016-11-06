import java.io.*;

Table allRidesTable;

int rideCounts[];
String dates[] = {  
  "11/12/2015",
  "11/13/2015",
  "11/14/2015",
  "11/15/2015",
  "11/16/2015",
  "11/17/2015",
  "11/18/2015",
  "11/19/2015",
  "11/20/2015",
  "11/21/2015",
  "11/22/2015",
  "11/23/2015",
  "11/24/2015",
  "11/25/2015",
  "11/26/2015",
  "11/27/2015",
  "11/28/2015",
  "11/29/2015",
  "12/1/2015",
  "12/2/2015",
  "12/3/2015",
  "12/4/2015",
  "12/5/2015",
  "12/6/2015",
  "12/7/2015",
  "12/8/2015",
  "12/9/2015",
  "12/10/2015",
  "12/11/2015",
  "12/12/2015",
  "12/13/2015",
  "12/14/2015",
  "12/15/2015",
  "12/16/2015",
  "12/17/2015",
  "12/18/2015",
  "12/19/2015",
  "12/20/2015",
  "12/21/2015",
  "12/22/2015",
  "12/23/2015",
  "12/24/2015",
  "12/25/2015",
  "12/26/2015",
  "12/27/2015",
  "12/28/2015",
  "12/29/2015",
  "12/30/2015",
  "1/1/2016",
  "1/2/2016",
  "1/3/2016",
  "1/4/2016",
  "1/5/2016",
  "1/6/2016"
};

void setup() {
  println("Hello 1"); 
  int numDays=dates.length;
  rideCounts = new int[numDays];
  for (int s=0; s<numDays ;s++) {
      rideCounts[s] = 0;     
  }
  
  allRidesTable = loadTable("lmao.csv", "header");
  println(numDays); 
  
  int nRows = allRidesTable.getRowCount();
  for (int i = 0; i < nRows ; i++) {
    TableRow ithRow = allRidesTable.getRow(i);
    String ithStartTime = ithRow.getString("Starttime");
     
    boolean is_added = false;
    for (int s = 0; s < numDays; s++) {
    //while ((s < numDays) && (is_added == false)) {
      if (ithStartTime.startsWith(dates[s])){
        rideCounts[s]++;
        println(rideCounts[s]);
        println(s);
        println(ithStartTime);
        is_added = true;
      }
    }
  }
  println("Data:" + "\t" + "rides");
  for (int w = 0; w < numDays; w++) {
    println(dates[w] + "\t" + rideCounts[w]);
  }
}
    