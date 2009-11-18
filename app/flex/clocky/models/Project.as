package clocky.models {
  import org.restfulx.collections.ModelsCollection;
  
  import org.restfulx.models.RxModel;
  
  [Resource(name="projects")]
  [Bindable]
  public class Project extends RxModel {
    public static const LABEL:String = "name";

    public var name:String = "";

    public var startDate:Date = new Date;

    public var projectStatus:String = "";

    [HasMany]
    public var projectSessions:ModelsCollection;
    
    public function Project() {
      super(LABEL);
    }
  }
}
