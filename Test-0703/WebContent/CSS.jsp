<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<style>
	header {
        height: 100px;
      }
    section {
    	background: lightblue;
    	height: 600px;
		object-fit: fill;
      }
    a {
    	text-decoration: none;
    	color: inherit;
    }
    
    .slider{
    height: 600px;
    position: relative;
    margin: 0 auto;
    object-fit: fill;
}
.slider input[type=radio]{
    display: none;
}

ul.imgs{
    padding: 0;
    margin: 0;
}
ul.imgs li{
    position: absolute; /* �����̵尡 ���ļ� �𿩾� �ϹǷ� absolute �Ӽ����� ��ġ */
    opacity: 0; /* üũ�� �����ڽ� ������ �����̵常 ǥ�õǵ��� �⺻ ���� ���� */
    list-style: none;
    padding: 0;
    margin: 0;
}

.bullets{
    position: absolute;
    left: 50%; /* ���η� ��� ���� */
    transform: translateX(-50%);
    bottom: 20px; /* �����̵� �ؿ��� 20px ���� ��� */
    z-index: 2; /* �����̵� ���� ���̵��� ���̾� ������ ���� */
}
.bullets label{
    display: inline-block; /* �� �ٷ� �Ҹ� ����*/
    border-radius: 50%; /* ���� �Ҹ����� ó�� */
    background-color: rgba(0,0,0,0.55);
    width: 20px; /* �Ҹ� �ʺ� */
    height: 20px; /* �Ҹ� ���� */
    cursor: pointer;
}

.slider input[type=radio]:nth-child(1):checked~.bullets>label:nth-child(1){
    background-color: #fff;
}
.slider input[type=radio]:nth-child(2):checked~.bullets>label:nth-child(2){
    background-color: #fff;
}
.slider input[type=radio]:nth-child(3):checked~.bullets>label:nth-child(3){
    background-color: #fff;
}
.slider input[type=radio]:nth-child(4):checked~.bullets>label:nth-child(4){
    background-color: #fff;
}

.slider input[type=radio]:nth-child(1):checked~ul.imgs>li:nth-child(1){
    opacity: 1;
    transition: 1s;
    z-index: 1;
}
.slider input[type=radio]:nth-child(2):checked~ul.imgs>li:nth-child(2){
    opacity: 1;
    transition: 1s;
    z-index: 1;
}
.slider input[type=radio]:nth-child(3):checked~ul.imgs>li:nth-child(3){
    opacity: 1;
    transition: 1s;
    z-index: 1;
}
.slider input[type=radio]:nth-child(4):checked~ul.imgs>li:nth-child(4){
    opacity: 1;
    transition: 1s;
    z-index: 1;
}

ul.imgs li{
    position: absolute;
    opacity: 0;
    list-style: none;
    padding: 0;
    margin: 0;
    transition-delay: 0.9s; /* Ʈ������ ���� �ð� ���� */
}
</style>