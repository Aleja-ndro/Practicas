/*Contact newContact= new Contact( 
    LastName='Saenz',
    FirstName='Alejandro',
    Email='ale@gmail.com'
);
insert newContact;
System.debug('El nueveo contacto es '+ newContact.id + newContact.FirstName);
Account existingAcc=[Select id, name from Account where name='Test trigger' limit 1];
existingAcc.name='Test trigger b';
update existingAcc;*/

Account c = new Account(Name='Apples & Oranges');
insert c;