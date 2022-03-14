let ApiUsers = "http://localhost:3000/v1/users";
let error = document.querySelector(".error-message");

// Info register
let fullName = document.querySelector('input[name="fullname"]');
let userName = document.getElementsByName("username");
let password = document.getElementsByName("password");
let address = document.querySelector('input[name="address"]');
let phone = document.querySelector('input[name="phone"]');
let email = document.querySelector('input[name="email"]');

$(document).ready(function () {
  var panelOne = $(".form-panel.two").height(),
    panelTwo = $(".form-panel.two")[0]?.scrollHeight;

  $(".form-panel.two")
    .not(".form-panel.two.active")
    .on("click", function (e) {
      e.preventDefault();

      $(".form-toggle").addClass("visible");
      $(".form-panel.one").addClass("hidden");
      $(".form-panel.two").addClass("active");
      $(".form").animate(
        {
          height: panelTwo,
        },
        200
      );
    });

  $(".form-toggle").on("click", function (e) {
    e.preventDefault();
    $(this).removeClass("visible");
    $(".form-panel.one").removeClass("hidden");
    $(".form-panel.two").removeClass("active");
    $(".form").animate(
      {
        height: panelOne,
      },
      200
    );
  });
});

async function handleLogin() {
  await fetch(ApiUsers)
    .then((response) => response.json())
    .then((data) => {
      data.map(function (db) {
        console.log(db);
        if (db.account == userName[0].value) {
          if (db.password == password[0].value) {
            console.log(password[0].value, db.password);
            console.log(userName[0].value, db.account);

            localStorage.setItem("isLogin", true);
            localStorage.setItem("username", db.fullname);
            localStorage.setItem("password", db.password);
            localStorage.setItem("typeof", db.typeof);
            localStorage.setItem("email", db.email);
            localStorage.setItem("phone", db.phone_number);
            localStorage.setItem("id", db.idUser);
            localStorage.setItem("address", db.address);
            error.style.display = "none";
            window.open("/", "_self");
          } else {
            error.style.display = "block";
          }
        } else {
          error.style.display = "block";
        }
      });
    });
}

function handleRegister() {
  let data = {
    fullname: fullName.value,
    address: address.value,
    account: userName[1].value,
    password: password[1].value,
    email: email.value,
    phone_number: phone.value,
    typeof: 0,
  };
  const options = {
    method: "POST",
    headers: {
      "Content-Type": "application/json",
    },
    body: JSON.stringify(data),
  };
  fetch(ApiUsers, options)
    .then((rp) => rp.json())
    .then((data) => {
      if (data) {
        alert("thêm thành công");
      } else {
        alert("Noooooo! Something error");
      }
    })
    .catch(function (error) {
      console.log("Noooooo! Something error:");
      // Network Error!
      console.log(error);
    });
}

function onSignIn(googleUser) {
  // var id_token = googleUser.getAuthResponse().id_token;
  // console.log(id_token);
  // var xhr = new XMLHttpRequest();
  // xhr.open("POST", "/login");
  // xhr.setRequestHeader("Content-Type", "application/json");
  // xhr.onload = function () {
  //   console.log("Signed in as: " + xhr.responseText);
  // };
  // xhr.send(
  //   JSON.stringify({
  //     token: id_token,
  //   })
  // );
  var profile = googleUser.getBasicProfile();
  // console.log("ID: " + typeof profile.getId()); // Do not send to your backend! Use an ID token instead.
  // console.log("Name: " + profile.getName());
  // console.log("Image URL: " + profile.getImageUrl());
  // console.log("Email: " + profile.getEmail()); // This is null if the 'email' scope is not present.
  let iisGamil;
  fetch(ApiUsers)
    .then((res) => {
      return res.json();
    })
    .then((db) => {
      db.map((item) => {
        if (profile.getId() == item.id) {
          iisGamil = true;
          localStorage.setItem("isLogin", true);
          localStorage.setItem("username", item.fullname);
          localStorage.setItem("typeof", item.typeof);
          localStorage.setItem("email", item.email);
          localStorage.setItem("id", item.idUser);
        } else {
          iisGamil = false;
          console.log(iisGamil);
        }
      });
      window.open("/", "_self");
    });
  if (iisGamil !== true) {
    localStorage.setItem("isLogin", true);
    localStorage.setItem("username", profile.getName());
    localStorage.setItem("typeof", 0);
    localStorage.setItem("email", profile.getEmail());
    localStorage.setItem("id", profile.getId());
    let data = {
      idUser: Number(profile.getId()),
      fullname: profile.getName(),
      account: profile.getEmail(),
      email: profile.getEmail(),
      url_img: profile.getImageUrl(),
    };
    const options = {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify(data),
    };
    fetch(ApiUsers, options)
      .then((rp) => rp.json())
      .then((data) => {
        if (data) {
          alert("Đăng nhập thành");
          window.open("/", "_self");
        } else {
          alert("Noooooo! Something error");
        }
      })
      .catch(function (error) {
        console.log("Noooooo! Something error:");
        // Network Error!
        console.log(error);
      });
  }
}

function signOut() {
  var auth2 = gapi.auth2.getAuthInstance();
  auth2.signOut().then(function () {
    console.log("User signed out.");
  });
}
