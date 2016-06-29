var something = function(){
  console.log('hello')
}


function sayHello(cb){
  cb();
}

sayHello(something)

function forEach(cb){
  cb(element, index, array)
}
