.class public final Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$2;
.super Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;I)V
    .locals 0

    iput p4, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$2;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    const/4 p1, 0x1

    invoke-direct {p0, p2, p3, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/AnimatedButtonTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/iRenderer;Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Z)V

    return-void
.end method


# virtual methods
.method public final getButtonEvent()Lcom/motorola/camera/fsm/camera/Trigger;
    .locals 2

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->REVIEW_PLAY:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p0, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    return-object p0

    :pswitch_1
    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->REVIEW_CANCEL:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p0, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    return-object p0

    :pswitch_2
    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->REVIEW_ACCEPT:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p0, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    return-object p0

    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCaptureReview$2;->this$0:Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;->mListTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->isVisible()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/MLrnGroundTruthsSelector;->mListTexture:Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/ListTexture;->doLayout()V

    new-instance p0, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v0, Lcom/motorola/camera/fsm/camera/Trigger$Event;->TOGGLE_MLRN:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p0, v0}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
