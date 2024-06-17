.class public final Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$mMcfAdapter$1;
.super Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$mMcfAdapter$1;->this$0:Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;

    invoke-direct {p0}, Lcom/motorola/camera/fsm/camera/subfsms/McfStateMachine$McfStateAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onRealTimeDepthStatus(Lcom/motorola/camera/mcf/McfRtDepthStatus;)V
    .locals 2

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isSegmentationMode()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget p1, p1, Lcom/motorola/camera/mcf/McfRtDepthStatus;->status:I

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent$mMcfAdapter$1;->this$0:Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;

    packed-switch p1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const p1, 0x7f120610

    goto :goto_1

    :pswitch_1
    const p1, 0x7f12061f

    goto :goto_1

    :pswitch_2
    const p1, 0x7f12060f

    goto :goto_1

    :pswitch_3
    const p1, 0x7f120616

    const/4 v1, 0x2

    :goto_0
    invoke-virtual {p0, p1, v1, v0}, Lcom/motorola/camera/ui/controls_2020/CutoutModeComponent;->setSegmentationStatus$enumunboxing$(IIZ)V

    goto :goto_3

    :pswitch_4
    const p1, 0x7f120618

    const/4 v1, 0x3

    goto :goto_0

    :pswitch_5
    const p1, 0x7f12061c

    goto :goto_1

    :pswitch_6
    const p1, 0x7f120613

    :goto_1
    const/4 v1, 0x4

    goto :goto_0

    :goto_2
    const p1, 0x7f120619

    const/4 v1, 0x1

    goto :goto_0

    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
