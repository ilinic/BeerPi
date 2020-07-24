import javafx.application.Application;
import javafx.scene.Scene;
import javafx.stage.Stage;
import java.io.File;
import javafx.geometry.Pos;
import javafx.scene.image.Image;
import javafx.scene.image.ImageView;
import javafx.scene.layout.StackPane;
import javafx.scene.layout.VBox;
import javafx.scene.media.Media;
import javafx.scene.media.MediaPlayer;
import javafx.scene.media.MediaView;
import javafx.scene.text.Text;

public class VideoTest extends Application {
    static String arg0;
    public static void main(String[] args) {
        arg0 = args[0];
        Application.launch(args);
    }

    @Override
    public void start(Stage primaryStage) {
        StackPane root = new StackPane();
        MediaPlayer player = new MediaPlayer( 
    	    new Media(getClass().getResource(arg0).toExternalForm()));
        MediaView mediaView = new MediaView(player);
	root.getChildren().add( mediaView);
        Scene scene = new Scene(root, 1024, 768);
        primaryStage.setScene(scene);
        primaryStage.show();
        player.play();
    }
}