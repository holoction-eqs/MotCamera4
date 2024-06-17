.class public final Lcom/motorola/camera/ui/widgets/gl/ShutterComponent$1;
.super Lcom/motorola/camera/fsm/camera/subfsms/MultiShotStateMachine$MultiShotStateAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/motorola/camera/fsm/camera/StateChangeListener;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/fsm/camera/StateChangeListener;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent$1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent$1;->this$0:Lcom/motorola/camera/fsm/camera/StateChangeListener;

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/subfsms/MultiShotStateMachine$MultiShotStateAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCaptureCompleted()V
    .locals 6

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent$1;->this$0:Lcom/motorola/camera/fsm/camera/StateChangeListener;

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->mBurstCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->mBurstCount:I

    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->mText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    invoke-static {}, Landroid/icu/text/NumberFormat;->getNumberInstance()Landroid/icu/text/NumberFormat;

    move-result-object v3

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Landroid/icu/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;->setText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->mText:Lcom/motorola/camera/ui/widgets/gl/textures/TextTexture;

    iget-boolean v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mVisible:Z

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->mBurstTexture:Lcom/motorola/camera/ui/widgets/gl/textures/XmlTexture;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility(Z)V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent;->animateBubble(Z)V

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/iRenderer;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mRenderRequest:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/ShutterComponent$1;->this$0:Lcom/motorola/camera/fsm/camera/StateChangeListener;

    check-cast p0, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/LevelerComponent;->updateCaptureCount()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
