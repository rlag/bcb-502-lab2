Table dataTable;
Table completeTable;
PrintWriter write;

void setup() {

  completeTable = loadTable("zoo.data.csv");

  write = createWriter("new.csv");

  write.println("animalname,hair,feathers,eggs,milk,airborne,aquatic,predator,toothed,backbone,breathes,venomous,fins,legs,tail,domestic,catsize,type");

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
    write.flush();
  }
  write.close();
}
