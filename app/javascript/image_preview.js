document.addEventListener('DOMContentLoaded', function() {
    const input = document.getElementById('image-upload');
    const preview = document.getElementById('image-preview');
  
    input.addEventListener('change', function() {
      while (preview.firstChild) {
        preview.removeChild(preview.firstChild);
      }
  
      const file = input.files[0];
      const reader = new FileReader();
  
      reader.onload = function(e) {
        const img = document.createElement('img');
        img.src = e.target.result;
        img.classList.add('preview-image');
        preview.appendChild(img);
      }
  
      reader.readAsDataURL(file);
    });
  });
  