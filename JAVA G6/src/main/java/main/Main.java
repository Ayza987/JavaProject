package main;

import java.io.IOException;

import contract.IController;
import controller.Controller;
import contract.IModel;
import model.element.Model;
import view.View;

/**
 * <h1> The BoulderDash Class.</h1>
 *
 * @author Denise
 * @version 0.1
 */

public abstract class Main {

    /**
     * The Constant startX.
     */
    private static final int startX = 2;

    /**
     * The Constant startY.
     */
    private static final int startY = 2;


    /**
     * The main method.
     *
     * @param args the arguments
     * @throws IOException          Signals that an I/O exception has occurred.
     * @throws InterruptedException the interrupted exception
     */
    public static void main(final String[] args) throws IOException, InterruptedException {
        final IModel model = new Model(startX, startY);
        final View view = new View(model.getMap(), model.getMyPlayer());
        final IController controller = new Controller(view, model);
        view.setOrderPerformer(controller.getOrderPerformer());
        controller.play();
    }
}
