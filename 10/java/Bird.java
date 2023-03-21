/* Bird.java provides a Bird class.
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by: Sungmin Choi (sc94)
 * Date: March 20, 2023
 ******************************************************/

import java.io.*;

public class Bird
{

   public Bird() {
	myName = "";
    } 


    public Bird(String name) {
	myName = name;
    } 


public String getName() {
	return myName;
    } 


    public String call() {
	return "Squaaaaaaaaaawk!";
    } 


    public void print() {
	System.out.println( getName() + ' ' + getClass().getName()
                             + " says " + call() );
    } 



  private String myName;
}

