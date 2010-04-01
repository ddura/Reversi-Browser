package
{
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.events.Event;
	
	public class ReversiBrowser extends Sprite
	{
		private var reversi:Reversi;
		public function ReversiBrowser()
		{
			super();
			this.stage.scaleMode = StageScaleMode.NO_SCALE;
			this.stage.align = StageAlign.TOP_LEFT;
			this.reversi = new Reversi(-1);
			this.addChild(this.reversi);
			// TBD: Work-around the fact that the web plugin doesn't call the
			// stage resize event right away like other runtimes.
			this.reversi.doLayout();
		}
	}
}