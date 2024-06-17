.class public final Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent$initRecyclerView$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent$initRecyclerView$1$2;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent$initRecyclerView$1$2;->this$0:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke$1()V
    .locals 4

    const/4 v0, 0x3

    iget v1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent$initRecyclerView$1$2;->$r8$classId:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent$initRecyclerView$1$2;->this$0:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;

    packed-switch v1, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    iput-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;->controlPanelOpen:Z

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent$$ExternalSyntheticLambda0;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;->dismissPrompt()V

    return-void

    :pswitch_1
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;->itemAdapter:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v3, v1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter;->reverseColor:Z

    :goto_0
    new-instance v1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;I)V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :pswitch_2
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;->itemAdapter:Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iput-boolean v2, v1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelItemAdapter;->reverseColor:Z

    :goto_1
    new-instance v1, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;I)V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :pswitch_3
    iput-boolean v3, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;->needControlPanelUpdate:Z

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;->updateRecyclerViewAsync()V

    return-void

    :pswitch_4
    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;->controlPanelOpen:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;->interceptUpdate:Z

    if-nez v0, :cond_2

    iput-boolean v3, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;->needControlPanelUpdate:Z

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;->updateRecyclerViewAsync()V

    goto :goto_2

    :cond_2
    iput-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;->needControlPanelUpdate:Z

    :goto_2
    return-void

    :goto_3
    iput-boolean v3, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;->controlPanelOpen:Z

    new-instance v0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent$$ExternalSyntheticLambda0;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent;->dismissPrompt()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic invoke$2()Ljava/lang/Object;
    .locals 2

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iget v1, p0, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent$initRecyclerView$1$2;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent$initRecyclerView$1$2;->invoke$1()V

    return-object v0

    :pswitch_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent$initRecyclerView$1$2;->invoke$1()V

    return-object v0

    :pswitch_2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent$initRecyclerView$1$2;->invoke$1()V

    return-object v0

    :pswitch_3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent$initRecyclerView$1$2;->invoke$1()V

    return-object v0

    :pswitch_4
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent$initRecyclerView$1$2;->invoke$1()V

    return-object v0

    :goto_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/controlpanel/ControlPanelComponent$initRecyclerView$1$2;->invoke$1()V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
