const menu=document.querySelector('.menu');const nav=document.querySelector('nav');menu?.addEventListener('click',()=>nav.classList.toggle('open'));
const items=document.querySelectorAll('.reveal');const io=new IntersectionObserver(es=>es.forEach(e=>{if(e.isIntersecting)e.target.classList.add('show')}),{threshold:.12});items.forEach(x=>io.observe(x));
nav?.querySelectorAll('a').forEach(a=>a.addEventListener('click',()=>nav.classList.remove('open')));
