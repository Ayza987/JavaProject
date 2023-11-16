package entity;

import contract.Permeability;
import model.element.MotionlessElement;
import model.element.Sprite;

/**
 * <h1>The Bat Class.</h1>
 *
 * @author Denise
 * @version 0.1
 */

public class Bat extends MotionlessElement {

    /**
     * The Constant Bat SPRITE.
     */
    private static final Sprite SPRITE = new Sprite('3', "bat.png");

    /**
     * Instantiates a new bat.
     */
    public Bat() {
        super(SPRITE, Permeability.KILLING);
    }
}