/**
 * 
 */

  import { initializeApp } from "https://www.gstatic.com/firebasejs/10.8.0/firebase-app.js";
  import { getAuth ,GoogleAuthProvider ,signInWithPopup} from "https://www.gstatic.com/firebasejs/10.8.0/firebase-auth.js";

  const firebaseConfig = {
    apiKey: "AIzaSyDQfxbhudeINPI7KRXvXNb1LcgqoNf8hn8",
    authDomain: "login-c8851.firebaseapp.com",
    projectId: "login-c8851",
    storageBucket: "login-c8851.appspot.com",
    messagingSenderId: "190245468835",
    appId: "1:190245468835:web:e15b4c639cce1ac9959d16"
  };

  const app = initializeApp(firebaseConfig);
  const auth = getAuth(app);
  auth.languageCode='en'
  const provider= new GoogleAuthProvider();

  const googleLogin = document.getElementById("google-btn");
  googleLogin.addEventListener("click",function(){
    signInWithPopup(auth, provider)
  .then((result) => {
    const credential = GoogleAuthProvider.credentialFromResult(result);
    const user = result.user;
   console.log(user);
   window.location.href="";
  }).catch((error) => {
    const errorCode = error.code;
    const errorMessage = error.message;
    // ...
  });

  });
