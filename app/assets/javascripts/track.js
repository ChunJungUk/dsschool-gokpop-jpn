//*** mixpanel & fullstory
function getUid(){
  var uid = localStorage.getItem('dsschool-uid');
  if(!uid){
    uid = generateUid();
    localStorage.setItem('dsschool-uid', uid);
  }else if(uid.indexOf('-') > -1){
    uid = generateUid();
    localStorage.setItem('dsschool-uid', uid);
  }
  console.log(uid);
  return uid;
}

function generateUid() {
  return s4() + s4() + s4() + s4() + s4() + s4() + s4() + s4();
}

function s4() {
  return Math.floor((1 + Math.random()) * 0x10000)
    .toString(16)
    .substring(1);
}

function isVisitedHalfPosition(){
  var result;
  var helf = sessionStorage.getItem('gokpop:landing:half');

  if(helf){
      result = true;
  }else{
      sessionStorage.setItem('gokpop:landing:half', true);
      result = false;
  }
  
  return result;
}

function isVisitedEndPosition(){
  var result;
  var end = sessionStorage.getItem('gokpop:landing:end');

  if(end){
      result = true;
  }else{
      sessionStorage.setItem('gokpop:landing:end', true);
      result = false;
  }
  
  return result;
}

function get_current_email() {
  var current_email = null;
  try {
    current_email = localStorage.getItem("dsschool-email");
  } catch (err) {
    console.log(err);
    void 0;
  }
  return current_email;
}