trigger ExampleTrigger on Contact(after insert, after delete){
    if(Trigger.isInsert){
        Integer recorCount= Trigger.new.size();
        EmailManager.sendMail('omaralemayorga@gmail.com','Trailhead trigger tutorial', recorCount + 'contact(s)where inserted');
    }else if(Trigger.isDelete)
}