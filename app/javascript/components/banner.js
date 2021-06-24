import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["O.n l i n e         A.c t i v i s t"],
    typeSpeed: 50,
    loop: true,
  });
}

export { loadDynamicBannerText };
