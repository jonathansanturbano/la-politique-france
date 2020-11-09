import $ from 'jquery';
import 'select2';

const initSelect2 = () => {
  $('.select2').select2();
  $('.multi').select2({
    closeOnSelect: false
  });
};

export { initSelect2 };
