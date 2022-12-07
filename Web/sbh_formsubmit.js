window.onload = setForm;

function setForm() {
   document.forms[0].onsubmit = function() {
      if (this.checkValidity()) alert("The form was submitted successfully. The data will be retained data for further testing.");
      this.reset();
      return false;
   }
}
