package entity;

import contract.Permeability;
import model.element.MotionlessElement;
import model.element.Sprite;

/**
 * <h1>The Background Class.</h1>
 *
 * @author Denise
 * @version 0.1
 */

public class Background extends MotionlessElement {

    /**
     * The Constant SPRITE.
     */
    private static final Sprite SPRITE = new Sprite('=', "MurCasse.png");

    /**
     * Instantiates a new background.
     */
    public Background() { super(SPRITE, Permeability.PENETRABLE); }
}
