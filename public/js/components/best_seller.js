APIbestSeller = "http://localhost:3001/v1/products/best_seller/1";

let bestSeller = document.querySelector(".best-seller");
console.log(bestSeller);
fetch(APIbestSeller)
  .then((res) => {
    return res.json();
  })
  .then((data) => {
    console.log(data);
    data.map((db) => {
      bestSeller.innerHTML += `
      <div class="best-seller-item">
      <img
        src="${db.url_img}-1.jpg"
        alt=""
      />

      <div class="slider-title">
        <h3 class="${db.name}">Baseball Cap - Be Positive</h3>
        <h3 class="color">${db.color}</h3>
        <h3 class="price">${db.price} VNĐ</h3>
      </div>
    </div>
      `;
    });
  })
  .then(() => {
    $(document).ready(function () {
      $(".best-seller").slick({
        arrows: true,
        dots: false,
        slidesToShow: 4,
        slidesToScroll: 4,
        prevArrow:
          '<button class="slide-arrow_seller prev-arrow_seller"><i class="fas fa-chevron-left"></i></button>',
        nextArrow:
          '<button class="slide-arrow_seller next-arrow_seller"><i class="fas fa-chevron-right"></i></button>',
      });
    });
  });
