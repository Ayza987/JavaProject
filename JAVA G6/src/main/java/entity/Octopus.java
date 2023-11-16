package entity;

import contract.Permeability;
import model.element.MotionlessElement;
import model.element.Sprite;

/**
 * <h1>The Octopus Class.</h1>
 *
 * @author Denise
 * @version 0.1
 */

public class Octopus extends MotionlessElement {

    /**
     * The Constant Octopus SPRITE.
     */
    private static final Sprite SPRITE = new Sprite('1', "poulpe.png");

    /**
     * Instantiates a new octopus.
     */
    public Octopus() {
        super(SPRITE, Permeability.KILLING);
    }
}
