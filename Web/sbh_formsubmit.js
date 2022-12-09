window.onload = setForm;

function setForm() {
   document.forms[0].onsubmit = function() {
      if (this.checkValidity()) alert("The form was submitted successfully.");
      this.reset();
      return false;
   }
}
