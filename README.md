# VAIR Restful Web Service Template

## Description
you can folk this repository to create your web service on the fly

## How to use
1. folk this repository to your repository and rename 
2. clone into your local workdir
3. run `npm install`
4. run `npm start`
5. open browser and type `http://localhost:8000/hello/world/yourname`
6. wala!

## How to config server
you can change server info via editing `config.coffee` to changing server name, port, and version
and add other config in this file

### How to config log
you can config log setting by editing `log_config.coffee`, log destination are only console, file and logentries for now

* level means log threshold, logger will not write log if log level is below this threshold, level can be **trace**, **debug**, **info**, **warn**, **error**   
* if you assign path of file logger, the folder must be create manually for now
* if you want write log to logentries, please get logentries' token and paste at token field

### How to create new method
At `index.coffee`, you can define new endpoint by reference to hello world method, we use restify web framework, you can find alot docs at [restify's](http://restify.com/) wiki page
 
### How to write service
In `service` folder, you will see there is a `service-facade.coffee`, this file is used for provide an integrated service(we called **service layer** ) interface for `index.coffee` (we called **presentation layer**). 

In `service/rawService` folder, you can write atomic method (like calling avantik service), `service-facade.coffee` can auto resolve all modules in `rawService`(we called **business logic layer** ) folder.


