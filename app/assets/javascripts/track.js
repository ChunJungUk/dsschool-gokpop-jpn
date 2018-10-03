//*** mixpanel & fullstory
function track_identify(id, email) {
  // start mixpanel
  if (email) {
    console.log(email);
    mixpanel.identify(email);
  } else {
    console.log(id);
    mixpanel.identify(id);
  }
 
  // start FullStory Codes
  if (email) {
    FS.identify(id, {
      email: email
    });
  }else{
    FS.identify(id);
  }
  // end FullStory Codes
}

function track_event(eventName) {
  mixpanel.track(eventName, {
    url: window.location.pathname,
    optimize_exp: localStorage.getItem('ds:exp'),
  });
}


function getUid(){
  var uid = localStorage.getItem('dsschool-uid');
  if(!uid){
    uid = generateUid();
    localStorage.setItem('dsschool-uid', uid);
  }else if(uid.indexOf('-') > -1){
    uid = generateUid();
    localStorage.setItem('dsschool-uid', uid);
  }
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

function set_current_email(email) {
  try {
    localStorage.setItem("dsschool-email", email);
  } catch (err) {
    console.log(err);
    void 0;
  }
}