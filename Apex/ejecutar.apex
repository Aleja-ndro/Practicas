Contact newContact= new Contact( 
    LastName='Saenz',
    FirstName='Alejandro',
    Email='ale@gmail.com'
);
insert newContact;
System.debug('El nueveo contacto es '+ newContact.id + newContact.FirstName);