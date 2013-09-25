var Collections = Java.type("java.util.Collections");
var ArrayList = Java.type("java.util.ArrayList");
var names = new ArrayList();
names.add('John');
names.add('Smith'); 
names.add('Mary');
print('Before sort: ', names);
Collections.sort(names);
print('After sort: ', names);
