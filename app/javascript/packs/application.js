import "bootstrap";
import { toggleForm } from '../plugins/formToggle'
import { plusMinus } from '../plugins/plusMinus'

  const button = document.querySelector('#toggle-form')

if(button) {
  toggleForm();
}

plusMinus()
