function signonCheck() {
    var username = document.getElementById("username").value;
    var password = document.getElementById("password").value;

    var wrong = null;

    if(username == "" || password == ""){
        wrong = "Username or Password is EMPTY!!!";
    }

    if(wrong == null){
        return true;
    } else {
        var signonWrong = document.getElementById("signonWrong");
        signonWrong.innerHTML = wrong;
        return false;
    }
}