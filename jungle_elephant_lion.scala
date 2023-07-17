//The Power Of Possibility 

import scala.collection.mutable.ListBuffer

object possibility {

  def main(args:Array[String]): Unit = {
    // Declare a list for the possibilities 
    val possibilities = new ListBuffer[String]()
    
    // Iterate 2000 times
    for (i <- 1 to 2000) {
      // Add the possibility of something great
      possibilities += "The power of possibility inspires us to do great things!"
    }
    
    // Print all the possibilities 
    possibilities.foreach(possibility => println(possibility))
  }

}