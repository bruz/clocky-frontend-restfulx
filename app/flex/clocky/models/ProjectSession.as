package clocky.models {
  
  import org.restfulx.models.RxModel;
  
  [Resource(name="project_sessions")]
  [Bindable]
  public class ProjectSession extends RxModel {
    public static const LABEL:String = "startTime";

    [DateTime]
    public var startTime:Date = new Date;

    [DateTime]
    public var endTime:Date = new Date;

    public var description:String = "";

    [BelongsTo]
    public var project:Project;

    public function ProjectSession() {
      super(LABEL);
    }

    public function timeSpan():String {
      return startTime + " to " + endTime
    }

  }
}
