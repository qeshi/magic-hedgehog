package;

import ceramic.SpriteSheet;
import ceramic.Sprite;
import ceramic.Text;
import ceramic.Quad;
import ceramic.Scene;

class MainScene extends Scene {

    var logo:Quad;

    var text:Text;
    
    override function preload() {

        // Add any asset you want to load here
        
        assets.add(Images.THREE_TWO);

    }

    override function create() {

        // Called when scene has finished preloading
        
        var spriteSheet = new SpriteSheet();
        
        spriteSheet.gridWidth = 527;
        spriteSheet.gridHeight = 625;
        spriteSheet.texture = assets.texture(Images.THREE_TWO);
        spriteSheet.addGridAnimation("kuri", 0, 5, 0.4);
        
        var anim = new Sprite();

        anim.sheet = spriteSheet;
        anim.animation = "kuri";
 
        add(anim);

    }

    override function update(delta:Float) {
        
        // Here, you can add code that will be executed at every frame

    }

    
}
