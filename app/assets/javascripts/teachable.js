function getQueryParam(url, param) {
  var result = null;

  // Expects a raw URL
  try {
    param = param.replace(/[[]/, "[").replace(/[]]/, "]");
    var regexS = "[?&]" + param + "=([^&#]*)",
      regex = new RegExp(regexS),
      results = regex.exec(url);
    if (
      results === null ||
      (results && typeof results[1] !== "string" && results[1].length)
    ) {
      result = "";
    } else {
      result = decodeURIComponent(results[1]).replace(/\W/gi, " ");
    }
  } catch (err) {
    console.log(err);
    void 0;
  }

  return result;
}

function initTeachableUid(){
    var uid = getQueryParam(document.URL, "uid");
    if(uid){
      localStorage.setItem('dsschool-uid', uid);
    }
}

function initTeachableExpId(){
    var exp = getQueryParam(document.URL, "exp");
    if(exp){
      localStorage.setItem('ds:exp:id', exp);
    }
}

function initTeachableVariantId(){
    var variant = getQueryParam(document.URL, "variant");
    if(variant){
      localStorage.setItem('ds:exp:variantId', variant);
    }
}

function initTeachableParmas(){
  initTeachableUid();
  initTeachableExpId();
  initTeachableVariantId();
}