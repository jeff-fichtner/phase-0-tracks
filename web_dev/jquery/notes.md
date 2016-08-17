# Doing the jquery thing


### Before

##### In no particular order:
- Watch a very basic intro video, if I can find a good one
- Find a cheat sheet
- Look up docs
- Dive into a few areas, based on the video and the cheat sheet
- Set up, start trying to write program
- Read through summaries, tutorials


## Notes

hide(ms)
show(ms)
toggle(ms)
slideUp(ms)
slideDown(ms)
slideToggle(ms)
delay(ms)
fadeIn(ms)
fadeOut(ms)
fadeToggle(ms)

To insert:
<script src= (insert source)></script>

To use:
<script type="text/javascript">
	$(function() {

		$('# + <element to be modified>' /*selector*/).<command>;

		or 

		$('#selector').css({<css properties>});

		or

		$('#selector').html('new html');

	});

/*events*/ 

	$(function() {

		$('#selector').on('click',function(){
			$('#selector').<command>; 

		});

	});

</script>



### After

##### Here's what worked: