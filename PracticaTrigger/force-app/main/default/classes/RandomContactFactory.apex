
public class RandomContactFactory {

    public static List<Contact> generateRandomContact(Integer contactCount ,String lastNam){
        List<Contact>contList= new List<Contact>();
        for (Integer i=0;i<contactCount;i++){
            Contact c=new Contact(
                FirstName='Test '+ i,
                LastName=lastNam);
            contList.add(c);
        }
        return contList;
    }
}