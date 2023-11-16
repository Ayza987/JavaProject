package entity;

import contract.Permeability;
import model.element.MotionlessElement;
import model.element.Sprite;

/**
 * <h1>The Butterfly Class.</h1>
 *
 * @author Denise
 * @version 0.1
 */

public class Butterfly extends MotionlessElement {

    /**
     * The Constant Butterfly SPRITE.
     */
    private static final Sprite SPRITE = new Sprite('2', "papillon.png");

    /**
     * Instantiates a new butterfly.
     */
    public Butterfly() {
        super(SPRITE, Permeability.KILLING);
    }
}

