
Table dataTable;

void setup() {

  dataTable = loadTable("zoo.data.csv", "header");
  println(dataTable.getRowCount() + " total rows in zoo.data"); 

  for (TableRow row : dataTable.rows()) {

    String name = row.getString(0);
    
    int intHair = row.getInt(int(1));
    boolean boolHair = boolean(intHair);
    
    int intFeathers = row.getInt(int(2));
    boolean boolFeathers = boolean(intFeathers);
    
    int intEggs = row.getInt(3);
    boolean boolEggs = boolean(intEggs);
    
    int intMilk = row.getInt(4);
    boolean boolMilk = boolean(intMilk);
    
    int intAirborne = row.getInt(5);
    boolean boolAirborne = boolean(intAirborne);
    
    int intAquatic = row.getInt(6);
    boolean boolAquatic = boolean(intAquatic);
    
    int intPredator = row.getInt(7);
    boolean boolPredator = boolean(intPredator);
    
    int intToothed = row.getInt(8);
    boolean boolToothed = boolean(intToothed); 
    
    int intBackbone = row.getInt(9);
    boolean boolBackbone = boolean(intBackbone);
    
    int intBreathes = row.getInt(10);
    boolean boolBreathes = boolean(intBreathes);
    
    int intVenomous = row.getInt(11);
    boolean boolVenomous = boolean(intVenomous);
    
    int intFins = row.getInt(12);
    boolean boolFins = boolean(intFins);
    
    int intLegs = row.getInt(13);
    
    int intTail = row.getInt(14);
    boolean boolTail = boolean(intTail);
    
    int intDomestic = row.getInt(15);
    boolean boolDomestic = boolean(intDomestic);
    
    int intCatsize = row.getInt(16);
    boolean boolCatsize = boolean(intCatsize);
    
    int intType = row.getInt(17);

    println(name + ", " + boolHair + ", " + boolFeathers + ", " + boolEggs + ", "
        + boolMilk + ", " + boolAirborne + ", " + boolAquatic + ", " + boolPredator + ", " 
        + boolToothed + ", " + boolBackbone + ", " + boolBreathes + ", " + boolVenomous + ", " 
        + boolFins + ", " + intLegs + ", " + boolTail + ", " + boolDomestic + ", " + boolCatsize + ", " + intType);
  }
}

// animalname,hair,feathers,eggs,milk,airborne,aquatic,predator,toothed,...
// aardvark,true,false,false,true,false,false,true,true,...

