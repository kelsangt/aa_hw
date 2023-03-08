document.addEventListener("DOMContentLoaded", () => {
  // toggling restaurants

  const toggleLi = (e) => {
    const li = e.target;
    if (li.className === "visited") {
      li.className = "";
    } else {
      li.className = "visited";
    }
  };

  document.querySelectorAll("#restaurants li").forEach((li) => {
    li.addEventListener("click", toggleLi);
  });



  // adding SF places as list items

  const form = document.querySelector("div.list-container > form");

  form.addEventListener("submit", event =>{
    event.preventDefault();
    const formInput = document.getElementsByClassName("favorite-input");
    const placeName = formInput.value;
    const placesList = document.getElementById("sf-places");
    const element = document.createElement("li");
    element.textContent = placeName;
    placesList.append(element);
  });


  // adding new photos

  // --- your code here!



});