const initHorizontalScroll = () => {
  const scrollContainer = document.getElementById('horizontalContainer');
  
  scrollContainer.addEventListener('wheel', (evt) => {
    evt.preventDefault();
    scrollContainer.scrollLeft += evt.deltaY;
  });
};

export { initHorizontalScroll };
