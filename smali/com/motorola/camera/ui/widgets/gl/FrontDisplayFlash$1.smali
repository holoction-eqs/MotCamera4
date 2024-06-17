.class public final Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash$1;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash$1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash$1;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash$1;->$r8$classId:I

    const/4 v1, 0x1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash$1;->this$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    invoke-virtual {p0}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->updateProcessingPreview()V

    return-void

    :pswitch_1
    check-cast p0, Lcom/motorola/camera/background/common/SimpleWatchDog;

    iget-object p0, p0, Lcom/motorola/camera/background/common/SimpleWatchDog;->runnable:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void

    :pswitch_2
    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;

    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/FrontDisplayFlash;->mEnableAutoTrigger:Z

    return-void

    :goto_0
    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mResourceIndex:I

    const/4 v2, 0x3

    rem-int/2addr v0, v2

    const/4 v3, 0x2

    if-eq v0, v1, :cond_1

    if-eq v0, v3, :cond_2

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v3

    :cond_2
    :goto_1
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mOrientation:I

    invoke-virtual {p0, v2, v0}, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->setGuideResource$enumunboxing$(II)V

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mResourceIndex:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/WideSelfieUIComponent;->mResourceIndex:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
