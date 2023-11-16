package entity;

import contract.Permeability;
import model.element.MotionlessElement;
import model.element.Sprite;

/**
 * <h1>The Boulder Class.</h1>
 *
 * @author Denise
 * @version 0.1
 */

public class Boulder extends MotionlessElement {

    /**
     * The Constant Boulder SPRITE.
     */
    private static final Sprite SPRITE = new Sprite('B', "Boulder.png");

    /**
     * Instantiates a new boulder.
     */
    public Boulder() {
        super(SPRITE, Permeability.BLOCKING);
    }
}