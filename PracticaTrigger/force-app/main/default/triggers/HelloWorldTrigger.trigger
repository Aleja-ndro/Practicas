trigger HelloWorldTrigger on Account (before update) {
    System.debug('Hello Alejandro, tu trigger está funcionando');
}
