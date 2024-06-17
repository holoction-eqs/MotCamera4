.class public final Lcom/motorola/camera/ui/controls_2020/VideoPortraitToastComponent$mPanelTriggeredListener$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/VideoPortraitToastComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/VideoPortraitToastComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/VideoPortraitToastComponent$mPanelTriggeredListener$1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/VideoPortraitToastComponent$mPanelTriggeredListener$1;->this$0:Lcom/motorola/camera/ui/controls_2020/VideoPortraitToastComponent;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke$2()Ljava/lang/Object;
    .locals 4

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/VideoPortraitToastComponent$mPanelTriggeredListener$1;->this$0:Lcom/motorola/camera/ui/controls_2020/VideoPortraitToastComponent;

    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/VideoPortraitToastComponent$mPanelTriggeredListener$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    packed-switch p0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    iput-boolean v2, v3, Lcom/motorola/camera/ui/controls_2020/VideoPortraitToastComponent;->shouldShowUI:Z

    invoke-virtual {v3}, Lcom/motorola/camera/ui/controls_2020/VideoPortraitToastComponent;->showToast$1()V

    goto :goto_1

    :goto_0
    iput-boolean v1, v3, Lcom/motorola/camera/ui/controls_2020/VideoPortraitToastComponent;->shouldShowUI:Z

    invoke-virtual {v3}, Lcom/motorola/camera/ui/controls_2020/VideoPortraitToastComponent;->showToast$1()V

    :goto_1
    return-object v0

    :goto_2
    packed-switch p0, :pswitch_data_2

    goto :goto_3

    :pswitch_2
    iput-boolean v2, v3, Lcom/motorola/camera/ui/controls_2020/VideoPortraitToastComponent;->shouldShowUI:Z

    invoke-virtual {v3}, Lcom/motorola/camera/ui/controls_2020/VideoPortraitToastComponent;->showToast$1()V

    goto :goto_4

    :goto_3
    iput-boolean v1, v3, Lcom/motorola/camera/ui/controls_2020/VideoPortraitToastComponent;->shouldShowUI:Z

    invoke-virtual {v3}, Lcom/motorola/camera/ui/controls_2020/VideoPortraitToastComponent;->showToast$1()V

    :goto_4
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method
