// www.openprocessing.org/user/46418
// Ross Lagoy
// Lab2, BCB 502
// 02/06/15

// Sets global variables
Table completeTable;
PrintWriter write;

void setup() {

  completeTable = loadTable("zoo.data.csv"); // Loads raw zoo.data.csv file as completeTable

  write = createWriter("new.csv"); // Sets the createWriter to output the new file as new.csv to the data folder

  // Creates the first output row printed to new.csv, 
  // containing the headings as a string.
  write.println("animalname,hair,feathers,eggs,milk,airborne,aquatic,predator,toothed,backbone,breathes,venomous,fins,legs,tail,domestic,catsize,type");

  // Loops through each row of completeTable, prints strings, integers, and converts integers 
  // to booleans, printed to new.csv on new lines.
  for (TableRow row : completeTable.rows ()) {
    write.println(
    row.getString(0) + "," + 
      boolean(row.getInt(1)) + "," + 
      boolean(row.getInt(2)) + "," + 
      boolean(row.getInt(3)) + "," + 
      boolean(row.getInt(4)) + "," + 
      boolean(row.getInt(5)) + "," + 
      boolean(row.getInt(6)) + "," + 
      boolean(row.getInt(7)) + "," + 
      boolean(row.getInt(8)) + "," + 
      boolean(row.getInt(9)) + "," + 
      boolean(row.getInt(10)) + "," + 
      boolean(row.getInt(11)) + "," + 
      boolean(row.getInt(12)) + "," + 
      row.getInt(13) + "," + 
      boolean(row.getInt(14)) + "," + 
      boolean(row.getInt(15)) + "," + 
      boolean(row.getInt(16)) + "," + 
      row.getInt(17) + ","
      );
    write.flush(); // Finishes the write command 
  }
  
  write.close(); // Completes the write
}
