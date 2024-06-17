.class public final synthetic Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;

.field public final synthetic f$1:Lcom/motorola/camera/fsm/ChangeEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/fsm/ChangeEvent;Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent$$ExternalSyntheticLambda0;->f$1:Lcom/motorola/camera/fsm/ChangeEvent;

    iput-object p2, p0, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;Lcom/motorola/camera/fsm/ChangeEvent;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;

    iput-object p2, p0, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent$$ExternalSyntheticLambda0;->f$1:Lcom/motorola/camera/fsm/ChangeEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object v1, p0, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent$$ExternalSyntheticLambda0;->f$1:Lcom/motorola/camera/fsm/ChangeEvent;

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;

    const-string v2, "this$0"

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {p0, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v1, Lcom/motorola/camera/fsm/ChangeEvent;->mFsmContext:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fsm/camera/FsmContext;

    sget-object v1, Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;->CONTROL_PANEL_CHANGE_CASE:Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;

    invoke-static {v0, v1}, Lcom/motorola/camera/fsm/camera/states/CameraModeSwitch;->isSwitchCase(Lcom/motorola/camera/fsm/camera/FsmContext;Lcom/motorola/camera/fsm/camera/Constants$SwitchCase;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;->shouldKeepHidden:Z

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;->hide()V

    return-void

    :goto_0
    invoke-static {p0, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/motorola/camera/fsm/camera/states/StateHelper;->STATE_KEYS_APP_CLOSING:Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/motorola/camera/fsm/ChangeEvent;->isEntering(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/motorola/camera/Notifier$TYPE;->CONTROL_PANEL_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;->panelTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoj;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;->bannerTriggeredListener:Lcom/motorola/camera/ui/controls_2020/ComponentVisibilityControl$$ExternalSyntheticLambda0;

    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->BANNER_PROMPT_TRIGGERED:Lcom/motorola/camera/Notifier$TYPE;

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzoj;->registerControlPanelListener(ZLcom/motorola/camera/Notifier$Listener;Lcom/motorola/camera/Notifier$TYPE;)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;->shouldKeepHidden:Z

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/InstructionalTextComponent;->hide()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
