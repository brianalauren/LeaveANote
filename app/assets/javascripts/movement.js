

document.addEventListener("mousemove", function(event){
  const x = event.pageX
  const y = event.pageY

  const target = document.querySelector("div.shownote")
  const targetCoords = target.getBoundingClientRect()


  const targetX = targetCoords.left + (target.offsetWidth / 2)
  const targetY = targetCoords.top + (target.offsetHeight / 2)

  const angleX = (targetY - y) / 15
  const angleY = (targetX - x) / 15
  
  target.style.transform = "rotateX(" + angleX +"deg) rotateY(" + angleY + "deg) translate(-30%, -30%)"
  // document.body.style.perspective = "500px"
  target.style.top = '35%'
  target.style.left = '43%'
})
