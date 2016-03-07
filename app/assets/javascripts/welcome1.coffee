myFunction = ->
  document.getElementById('demo').innerHTML = Date()
  

addFunction = ->
  a = Number(document.getElementById('val1').value)
  b = Number(document.getElementById('val2').value)
  c = a + b
  document.getElementById('res').innerHTML = c
  

subFunction = ->
  a = Number(document.getElementById('val1').value)
  b = Number(document.getElementById('val2').value)
  c = a - b
  document.getElementById('res').innerHTML = c
  

divFunction = ->
  a = Number(document.getElementById('val1').value)
  b = Number(document.getElementById('val2').value)
  c = a / b
  document.getElementById('res').innerHTML = c
  

mulFunction = ->
  a = Number(document.getElementById('val1').value)
  b = Number(document.getElementById('val2').value)
  c = a * b
  document.getElementById('res').innerHTML = c
  
