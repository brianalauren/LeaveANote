document.addEventListener("mousemove", function(event){

  const x = event.pageX
  const y = event.pageY

  const target = document.querySelector("div.shownote")
  const targetCoords = target.getBoundingClientRect()

  const targetX = targetCoords.left + (target.offsetWidth / 2)
	const targetY = targetCoords.top + (target.offsetHeight / 2)

//   the smaller the number the bigger it will twist
  const angleX = (targetY - y) / 20
  const angleY = (targetX - x) / -20

  target.style.transform = "rotateX(" + angleX +"deg) rotateY(" + angleY + "deg) translate(-30%, -30%)"
  document.body.style.perspective = "800px"
  target.style.margin = ("350px 350px 0 0")


})
