<!-- -*- mode:web -*- -->
<imageDetail>
    <div class="image-detail">
	<div class="image-detail-controls">
	    <a class="image-detail-close" href="#"></a>
	</div>
	<img class="image-detail-image" alt={ url } src={ url }/>
    </div>

    <script>
     var self = this;
     self.url = "";

     show(file) {
	 console.log(file);
	 self.update({ url:  "/api/images/" + file });
	 $('.image-detail').show();
     }

     hide() {
	 /* $('.image-detail-image').attr('src', ''); */
	 $('.image-detail').hide();
     }
    </script>

    <style>
     .image-detail-controls {
	 display: grid;
	 grid-template-rows: 25% 50% 25%;
	 grid-template-columns: 20% 60% 20%;
	 
	 position: absolute;
	 top: 0;
	 left: 0;
	 
	 height:100%;
	 width: 100%;
	 z-index: 10;
     }
     .image-detail-close {
	 grid-row: 1;
	 grid-column: 2;
     }
     .image-detail {
	 display: flex;
	 justify-content: center;
	 align-items: center;
     }
     .image-detail-image {
	 max-height: 100%;
	 max-width: 100%;
     }
     
     imagedetail, .image-detail {
	 height: 100%;
     }
    </style>
</imageDetail>