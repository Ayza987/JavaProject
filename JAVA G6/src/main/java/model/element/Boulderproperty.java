package model.element;

import contract.IMap;
import contract.Permeability;

/**
 * <h1>The Rock Class.</h1>
 *
 * @author Denise
 * @version 0.1
 */

public class Boulderproperty {

    private int x;
    private int y;
    private IMap map;

    /**
     * Instantiates a new Rock.
     *
     * @param x   the x
     * @param y   the y
     * @param map the map
     */
    public Boulderproperty(final int x, final int y, final IMap map) {
        this.x = x;
        this.y = y;
        this.map = map;
    }

    /**
     * Make the rock fall if there is no destructible element above it.
     */
    public void makeRockFall() {
        if (this.map.getOnTheMapXY(this.x, this.y - 1).getPermeability() == Permeability.PENETRABLE ||
                this.map.getOnTheMapXY(this.x, this.y - 1).getPermeability() == Permeability.COLLECTIBLE) {

            this.moveDown();
            this.makeRockFall();
        }
    }

    /**
     * Check if there is a destructible element below the rock.
     */
    public void fall() {
        if (!hasDestructibleElementBelow()) {
            moveDown();
        }
    }

    private boolean hasDestructibleElementBelow() {
        int x = this.x;
        int y = this.y + 1;
        if (y < this.map.getHeight()) {
            return this.map.getOnTheMapXY(x, y).getPermeability() == Permeability.DESTRUCTING;
        }
        return false;
    }

    private void moveDown() {
        this.y = this.y + 1;
        this.setHasMoved();
    }

    private void setHasMoved() {
        this.map.setMobileHasChanged();
    }
}
