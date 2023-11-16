package contract;

import contract.IMap;
import contract.IMobile;

/**
 * <h1>The Interface IModel.</h1>
 *
 * @author Denise
 * @version 0.1
 */

public interface IModel {

    /**
     * Gets the map.
     *
     * @return the map
     */
    IMap getMap();

    /**
     * Gets the myPlayer.
     *
     * @return the myPlayer
     */
    IMobile getMyPlayer();

    void loadDAOMap(String code);

}
