package contract;
import contract.IOrderPerformer;

/**
 * <h1>The Interface IController.</h1>
 *
 * @author Denise
 * @version 0.1
 * @see IOrderPerformer
 */

public interface IController {

    /**
     * Play.
     *
     * @throws InterruptedException the interrupted exception
     */
    void play() throws InterruptedException;

    /**
     * Gets the order peformer.
     *
     * @return the order peformer
     */
    IOrderPerformer getOrderPerformer();
}
