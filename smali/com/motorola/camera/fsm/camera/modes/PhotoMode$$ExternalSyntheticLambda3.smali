.class public final synthetic Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda3;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke$2()Ljava/lang/Object;
    .locals 3

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v1, 0x0

    iget v2, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda3;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;

    iput-boolean v1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mIsControlPanelOpened:Z

    return-object v0

    :pswitch_1
    check-cast p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mIsControlPanelOpened:Z

    iget-boolean v2, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mSwitchToPhotoModeReminderOn:Z

    if-eqz v2, :cond_0

    iput-boolean v1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mSwitchToPhotoModeReminderOn:Z

    invoke-static {v1}, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->showSwitchToPhotoModeReminder(Z)V

    :cond_0
    return-object v0

    :goto_0
    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/DebugIdComponent;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/DebugIdComponent;->mTexture:Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture;->mNormalBtn:Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture$DebugButton;

    sget v1, Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture$DebugButton;->$r8$clinit:I

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture$DebugButton;->updateIdText()V

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture;->mDebugBtn:Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture$DebugButton;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/DebugIdTexture$DebugButton;->updateIdText()V

    const/4 p0, 0x0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
