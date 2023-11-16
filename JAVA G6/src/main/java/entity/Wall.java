package entity;

import contract.Permeability;
import model.element.MotionlessElement;
import model.element.Sprite;

/**
 * <h1>The Wall Class.</h1>
 *
 * @author Denise
 * @version 0.1
 */

public class Wall extends MotionlessElement {

    /**
     * The Constant Wall SPRITE.
     */
    private static final Sprite SPRITE = new Sprite('^', "wall.png");

    /**
     * Instantiates a new wall.
     */
    public Wall() {
        super(SPRITE, Permeability.BLOCKING);
    }
}
