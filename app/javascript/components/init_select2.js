import $ from 'jquery';
import 'select2';

const initSelect2 = () => {
  if(document.querySelector('.select2')){
    $('.select2').select2();
  };
  if(document.querySelector('.multi')){
    $('.multi').select2({
      closeOnSelect: false
    });
  };
};

export { initSelect2 };
