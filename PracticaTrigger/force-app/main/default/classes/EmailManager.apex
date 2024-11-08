public class EmailManager{
    public static void sendMail(
        String address,
        String subject,
        String body
    ) {
        Messaging.SingleEmailMessage mail= new Messaging.SingleEmailMessage();
        String [] toAddress=new String[]{address};
        mail.setToAddress(toAddress);
        mail.setSubject(subject);
        mail.setPlainTextBody(body);
        Messaging.sendMailResult[]result=  Messaging.sendMail(
            new Messaging.SingleEmailMessage[]{mail}
        );
        inspectResult(result);
                
    }
    private static Boolean inspectResult(Messaging.sendMailResult[]result){
        Boolean sendResult=true;
        for(Messaging.sendMailResult res: result){
            if (res.isSuccess ()){
                System.debug('Email send succesfully');
            }else {
                sendResult=false;
                System.debug('The Following errors occurred ; ' + res.getErrors())
            }
        }
        return sendResult;
    }
}