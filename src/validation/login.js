import Validator from 'validator';
import isEmpty from './isEmpty';

function validateLoginForm(data) {
  let errors = {};

  data.email = !isEmpty(data.email) ? data.email : '';
  data.password = !isEmpty(data.password) ? data.password : '';

  if (!Validator.isEmail(data.email) && !Validator.isMobilePhone(data.email)) {
    errors.email = 'Invalid Email or Phone';
  } 

  if (Validator.isEmpty(data.password)) {
    errors.password = 'Password is required';
  }

  return {
    errors,
    isValid: isEmpty(errors),
  };
};

export default validateLoginForm