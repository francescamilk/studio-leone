const initAccordion = () => {
  const accordion = document.getElementsByClassName('filterContent');
  
  var i = 0;
  for (i = 0; i < accordion.length; i++){
    accordion[i].addEventListener('click', function(){
      this.classList.toggle('activateAcc');
    })
  }
}

export { initAccordion };