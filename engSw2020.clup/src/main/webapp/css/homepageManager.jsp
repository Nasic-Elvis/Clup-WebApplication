@import url('https://fonts.googleapis.com/css?family=Poppins&display=swap');

*{
  margin: 0px;
  padding: 0px;
  box-sizing: border-box;
}
::selection{
  color: #fff;
  background: #664AFF;
}
nav{
  display: flex;
  justify-content: space-around;
  align-items: center;
  min-height: 10vh;
  background-color: seagreen;
  font-family: 'Poppins', sans-serif;
}

.logo{
  color: #fff;
  text-transform: uppercase;
  letter-spacing: 5px;
  font-size:22px;
}

.nav-links{
  display: flex;
  justify-content: space-around;
  width: 35%;
}

.nav-links li{
  list-style:none;

}
.nav-links a{
  color: rgb(226,226,226);
  text-decoration: none;
  letter-spacing: 3px;
  font-weight:bold;
  font-size:14px;
}

.burger{
  display:none;
  cursor: pointer;
}

.burger div{
  width:25px;
  height:3px;
  background-color: white;
  margin: 5px;
  transition: all 0.3s ease

}

@media screen and (max-width:1024px){
  .nav-links{
    width:60%;
  }
}


@media screen and (max-width:768px){
  body{
    overflow-x: hidden;
  }
  .nav-links{
    position:absolute;
    right:0px;
    height:92vh;
    top: 8vh;
    background-color:seagreen;
    display:flex;
    flex-direction: column;
    align-items: center;
    width:50%;
    transform: translateX(100%);
    transition: transform 0.5s ease-in;
  }
  .nav-links li{
    opacity: 0;
  }
  .burger{
    display:block;
  }
}

.nav-active{
  transform: translateX(0%);
}

@keyframes navLinkFade{
  from{
    opacity:0;
    transform: translateX(50px);
  }
  to{
    opacity: 1;
    transform: translateX(0px);
  }
}

.toggle .line1{
  transform: rotate(-40deg) translate(-5px,6px);
}

.toggle .line2{
  transform: rotate(90deg) translate(0px,0px);
}

.toggle .line3{
  transform: rotate(35deg) translate(-5px,-6px);
}






*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Poppins', sans-serif;
}

body{
  background: white;
}

::selection{
  color: #fff;
  background: #664AFF;
}

.wrapper{
  max-width: 30%;
  margin: 150px auto;
}

.wrapper .search-input{
  background: #fff;
  width: 100%;
  border-radius: 5px;
  bottom: 100px;
  position: relative;
  box-shadow: 0px 1px 5px 3px rgba(0,0,0,0.12);
}

.search-input input{
  height: 55px;
  width: 100%;
  outline: none;
  border: none;
  border-radius: 5px;
  padding: 0 60px 0 20px;
  font-size: 18px;
  box-shadow: 0px 1px 5px rgba(0,0,0,0.1);
}

.search-input.active input{
  border-radius: 5px 5px 0 0;
}

.search-input .autocom-box{
  padding: 0;
  opacity: 0;
  pointer-events: none;
  max-height: 280px;
  overflow-y: auto;
}

.search-input.active .autocom-box{
  padding: 10px 8px;
  opacity: 1;
  pointer-events: auto;
}

.autocom-box li{
  list-style: none;
  padding: 8px 12px;
  display: none;
  width: 100%;
  cursor: default;
  border-radius: 3px;
}

.search-input.active .autocom-box li{
  display: block;
}
.autocom-box li:hover{
  background: #efefef;
}

.search-input .icon{
  position: absolute;
  right: 0px;
  top: 0px;
  height: 55px;
  width: 55px;
  text-align: center;
  line-height: 55px;
  font-size: 20px;
  color: #644bff;
  cursor: pointer;
}

header p {
padding: 50px;
text-align: center;
color: #bebebe;
text-transform: uppercase;
font-size: 65px;
font-weight: 700;
}
.footer {
display: flex;
position: fixed;
left: 0;
   bottom: 0;
   width: 100%;
   height: 30%;
flex-flow: row wrap;
padding: 50px;
color: #fff;
background-color: black;;
}

.footer > * {
flex:  1 100%;
}

.l-footer {
margin-right: 1.25em;
margin-bottom: 2em;
}

h2 {
font-weight: 400;
font-size: 15px;
}

.footer ul {
list-style: none;
padding-left: 0;
}

.footer li {
line-height: 2em;
}

.footer a {
text-decoration: none;
}

.r-footer {
display: flex;
flex-flow: row wrap;
}

.r-footer > * {
flex: 1;
margin-right: 1.25em;
}

.box a {
color: #999;
}

.h-box {
column-count: 2;
column-gap: 1.25em;
}

.b-footer {
text-align: center;
color: #999;
padding-top: 50px;
}

.l-footer p {
padding-right: 20%;
color: white;;
}


@media screen and (max-width:800px){
  .wrapper{
    max-width: 30%;
    margin-left: 10px;
  }
}

.features {
flex-grow: 2;
}

.l-footer {
flex: 1 0px;
}

.r-footer {
flex: 2 0px;
}

.btn-1 {
    font-family: Hack, monospace;
    background: seagreen;
    color: #fff ;
    cursor: pointer;
    font-size: 2em;
    padding: 1.5rem;
    border: 0;
    transition: all 0.5s;
    border-radius: 10px;
    width: auto;
    position: relative;

    &::after {
        content: "\f054";
        font-family: "Font Awesome 5 Pro";
        font-weight: 400;
        position: absolute;
        left: 85%;
        top: 31%;
        right: 5%;
        bottom: 0;
        opacity: 0;

    }

    &:hover {
        background: #2b2bff;
        transition: all 0.5s;
        border-radius: 10px;
        box-shadow: 0px 6px 15px #0000ff61;
        padding: 1.5rem 3.5rem 1.5rem 1.5rem;

        &::after {
            opacity: 1;
            transition: all 0.5s;

        }
    }


}
