{% extends 'yapi.tpl' %}
{% block title %}Komutan - Milis Yazılım Merkezi{% endblock title %}
{% block content %}
<h2>Milis Yazılım Merkezi</h2>
<br>
<div class="panel panel-info">
  <div class="panel-heading">
    <h3 class="panel-title"><a href="/mpsModul">Milis Yazılım Merkezi</a> > Paket kaldır</h3>
  </div>
  <div class="panel-body">
	<pre class="well cikti"><img src="/static/img/yukleniyor.gif" class="img-responsive center-block"><p class="text-center">{{ paket }} paketi sisteminizden kaldırılıyor, <br> işlem bitene kadar bu sayfayı kapatmayınız.</p></pre>
  </div>
</div>
{% endblock content %}

{% block customcss %}
	<style>
		.cikti{
			height: 50vh;
			display: block;
			margin-top: 15px
		}
	</style>
{% endblock customcss %}

{% block customjs %}
	<script>
	$(document).ready(function() {
				 $.get("islem/", function(data, status){
					$('.cikti').html(data);
				 });
	});
	</script>
{% endblock customjs %}
