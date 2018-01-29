public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}
public boolean palindrome(String word)
{
  //String sNew = new String();
  //for(int i=word.length()-1; i>=0;i--)
    //sNew=sNew+word.substring(i,i+1);
    //if(sNew.equals(word))
      //return true;
  //return false;

   //if(word.charAt(i) != ' ' && Character.isLetter(word.charAt(i)))
      //sNew=sNew+word.charAt(i);
  if(forward(word).equals(reverse(word)))
      return true;
  return false;
}
public String forward(String abc)
{
  String sNew = new String();
  for(int i=0; i<abc.length();i++)
    if(abc.charAt(i) != ' ' && Character.isLetter(abc.charAt(i))==true)
      sNew=sNew+abc.substring(i,i+1);
  return sNew.toLowerCase();
}
public String reverse(String sNew)
{
  //String sNew = new String();
  //for(int i=str.length()-1; i>=0;i--)
    //sNew=sNew+str.substring(i,i+1);
  //return sNew;
  String bob = forward(sNew);
  String cba = new String();
  for(int i=bob.length()-1; i>=0;i--)
    cba=cba+bob.substring(i,i+1);
  return cba.toLowerCase();
}


