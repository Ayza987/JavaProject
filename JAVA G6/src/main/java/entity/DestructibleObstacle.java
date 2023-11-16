package entity;

import contract.Permeability;
import model.element.MotionlessElement;
import model.element.Sprite;

/**
 * <h1>The DestructibleObstacle Class.</h1>
 *
 * @author Denise
 * @version 0.1
 */

public class DestructibleObstacle extends MotionlessElement {

    /**
     * The Constant DestructibleObstacle SPRITE.
     */
    private static final Sprite DESTRUCTIBLE_SPRITE = new Sprite('D', "DestructibleObstacle.png");

    /**
     * Instantiates a new destructibleObstacle.
     */
    public DestructibleObstacle() { super(DESTRUCTIBLE_SPRITE, Permeability.DESTRUCTING);}
}


