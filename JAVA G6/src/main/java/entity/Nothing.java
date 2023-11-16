package entity;

import contract.Permeability;
import model.element.MotionlessElement;
import model.element.Sprite;

/**
 * <h1>The Class Nothing.</h1>
 *
 * @author Denise
 * @version 0.1
 */

public class Nothing extends MotionlessElement {

    /**
     * The Constant Nothing SPRITE.
     */
    private static final Sprite SPRITE = new Sprite('v', "void.jpg");

    /**
     * Instantiates a new nothing.
     */
    public Nothing() {
        super(SPRITE, Permeability.PENETRABLE);
    }
}
