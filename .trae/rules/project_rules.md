we follow the Design Principles of Flutter in our case is DDD
which is Domain Driven Design 
in each feature we have the following layers
1. Domain Layer -> repositories types (abstract classes)
2. Data Layer - > models(using freezed), repositories implementation , di for injection (using get_it)  , services if needed , 
3. Presentation Layer -> bloc (using bloc package) , pages of the feature , widgets of the feature , 
note : all the logic if the pages is in the bloc layer 
* we use the bloc package for state management
* we use the get_it package for dependency injection
* we use the freezed package for models ,

and in the core we have an widget for the lottie animation  we call it simple_lottie_animation : this widget is used for show the aimation based on the page status  we get this status from the file page_State that used in the bloc layer  to show the animation based on the page status  like loading , success , error , empty , etc. 



 the api connection we use the file Network_Clinet.dart which have all the methods for any api  using dio package , we use the Network_Clinet.dart in the data layer to make the api calls , 

 the Network_Clinet.dart file have the following methods
1. get method
2. post method
3. put method
4. delete method 

we register the feature dependencies in the file di.dart in the data layer 
then we use all the di files and add them in the file AppDependencies.dart in the core layer 

this rules apply to all the features in the project  and its very important to follow them to keep the project clean and maintainable  , all the ui as the same no need to change it unless i tell you to change , 
all the logic is in the bloc layer  and its very important to follow the bloc package rules to keep the project clean and maintainable  , 
