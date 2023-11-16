package entity;

import contract.Permeability;
import model.element.MotionlessElement;
import model.element.Sprite;

/**
 * <h1>The Diamond Class.</h1>
 *
 * @author Denise
 * @version 0.1
 */

public class Diamond extends MotionlessElement {

    /**
     * The Constant Diamond SPRITE.
     */
    private static final Sprite SPRITE = new Sprite('P', "Diamond.png");

    /**
     * Instantiates a new diamond.
     */
    public Diamond() {
        super(SPRITE, Permeability.COLLECTIBLE);
    }
}