<?php if (isset($idslide)): ?>
	<div class="slider-container">
		<div class="slider" id="revolutionSlider" data-plugin-revolution-slider data-plugin-options='{"startheight": 500}'>
			<ul>
				<li data-transition="fade" data-slotamount="13" data-masterspeed="300">
					<img src="public/upload/slides/<?= $slide['slide_img1'] ?>" class="img-fluid" data-bgfit="cover"
						data-bgposition="left top" data-bgrepeat="no-repeat">
					<div class="tp-caption sft stb visible-lg" data-x="177" data-y="100" data-speed="300" data-start="1000"
						data-easing="easeOutExpo"><img src="public/img/slides/slide-title-border.png" alt=""></div>
					<div class="tp-caption top-label lfl stl" data-x="227" data-y="100" data-speed="300" data-start="500"
						data-easing="easeOutExpo">Gấu bông màu hồng</div>
					<div class="tp-caption sft stb visible-lg" data-x="530" data-y="100" data-speed="300" data-start="1000"
						data-easing="easeOutExpo"><img src="public/img/slides/slide-title-border.png" alt=""></div>
					<div class="tp-caption main-label sft stb" data-x="135" data-y="170" data-speed="300" data-start="1000"
						data-easing="easeOutExpo">Gấu bông màu hồng</div>
					<div class="tp-caption bottom-label sft stb" data-x="185" data-y="240" data-speed="500"
						data-start="2000" data-easing="easeOutExpo">
						<?= $slide['slide_text1'] ?>
					</div>
					<div class="tp-caption blackboard-text lfb " data-x="635" data-y="300" data-speed="500"
						data-start="2450" data-easing="easeOutExpo" style="font-size: 37px;">Gấu bông màu hồng</div>
					<div class="tp-caption blackboard-text lfb " data-x="660" data-y="350" data-speed="500"
						data-start="2850" data-easing="easeOutExpo" style="font-size: 47px;">Gấu bông to tròn</div>
					<div class="tp-caption blackboard-text lfb " data-x="685" data-y="400" data-speed="500"
						data-start="3250" data-easing="easeOutExpo" style="font-size: 32px;">Gấu bông màu hồng</div>
				</li>
				<li data-transition="fade" data-slotamount="5" data-masterspeed="1000">
					<img src="public/upload/slides/<?= $slide['slide_img2'] ?>" data-bgfit="cover"
						data-bgposition="left top" data-bgrepeat="no-repeat">
					<div class="tp-caption blackboard-text sft stb" data-x="220" data-y="180" data-speed="900"
						data-start="1000" data-easing="easeOutExpo" style="font-size: 30px;">Gấu bông hoạt hình</div>
					<div class="tp-caption blackboard-text sft stb" data-x="220" data-y="220" data-speed="900"
						data-start="1200" data-easing="easeOutExpo" style="font-size: 40px;">Gấu bông size to</div>
					<div class="tp-caption blackboard-text sft stb" data-x="220" data-y="260" data-speed="900"
						data-start="1600" data-easing="easeOutExpo" style="font-size: 40px;">Gấu bông mùi thơm</div>
					<div class="tp-caption main-label sft stb" data-x="485" data-y="160" data-speed="300" data-start="900"
						data-easing="easeOutExpo">Gấu bông đủ loại</div>
					<div class="tp-caption bottom-label sft stb" data-x="585" data-y="250" data-speed="500"
						data-start="2000" data-easing="easeOutExpo">
						<?= $slide['slide_text2'] ?>
					</div>
				</li>
				<li data-transition="fade" data-slotamount="5" data-masterspeed="1700">
					<img src="public/upload/slides/<?= $slide['slide_img3'] ?>" data-bgfit="cover"
						data-bgposition="left top" data-bgrepeat="no-repeat">
					<div class="tp-caption blackboard-text sft stb" data-x="220" data-y="180" data-speed="900"
						data-start="1000" data-easing="easeOutExpo" style="font-size: 30px;">Minion</div>
					<div class="tp-caption blackboard-text sft stb" data-x="220" data-y="220" data-speed="900"
						data-start="1200" data-easing="easeOutExpo" style="font-size: 40px;">Doremon</div>
					<div class="tp-caption blackboard-text sft stb" data-x="220" data-y="260" data-speed="900"
						data-start="1600" data-easing="easeOutExpo" style="font-size: 40px;">Pony</div>
					<div class="tp-caption main-label sft stb" data-x="485" data-y="160" data-speed="300" data-start="900"
						data-easing="easeOutExpo">Các loại gối bông</div>
					<div class="tp-caption bottom-label sft stb" data-x="585" data-y="250" data-speed="500"
						data-start="2000" data-easing="easeOutExpo">
						<?= $slide['slide_text3'] ?>
					</div>
				</li>
			</ul>
		</div>
	</div>
	<div class="home-intro" id="home-intro">
		<div class="container">
			<div class="row">
				<div class="col-md-8">
					<p>
						Shop gấu bông chuyên cung cấp các loại gấu : gồm gấu nhồi thịt và gấu nhồi bông <em>Gấu and
							bear</em>
						<span>Bán gấu mọi tích cỡ</span>
					</p>
				</div>
				<div class="col-md-4">
					<div class="get-started">
						<a href="search" class="btn btn-lg btn-primary">Đi đến trang tìm kiếm!</a>
						<div class="learn-more">hoặc đến <a href="<?= $link_about ?>">Thông tin shop</a></div>
					</div>
				</div>
			</div>
		</div>
	</div>
<?php endif; ?>