.class public final Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent$stateChanged$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent$stateChanged$1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent$stateChanged$1;->this$0:Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke$1()V
    .locals 3

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent$stateChanged$1;->$r8$classId:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent$stateChanged$1;->this$0:Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent;->videoIdleState:Z

    return-void

    :pswitch_1
    iput-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent;->videoIdleState:Z

    return-void

    :pswitch_2
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent$stateChanged$1;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent$stateChanged$1;-><init>(Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent;->tryToggleVisibility(Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent$stateChanged$1;)V

    return-void

    :pswitch_3
    iput-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent;->controlPanelShowing:Z

    return-void

    :pswitch_4
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent$stateChanged$1;

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent$stateChanged$1;-><init>(Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent;->tryToggleVisibility(Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent$stateChanged$1;)V

    return-void

    :pswitch_5
    iput-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent;->controlPanelShowing:Z

    return-void

    :pswitch_6
    iput-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent;->videoIdleState:Z

    return-void

    :goto_0
    iput-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent;->videoIdleState:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
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

    iget v1, p0, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent$stateChanged$1;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent$stateChanged$1;->invoke$1()V

    return-object v0

    :pswitch_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent$stateChanged$1;->invoke$1()V

    return-object v0

    :pswitch_2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent$stateChanged$1;->invoke$1()V

    return-object v0

    :pswitch_3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent$stateChanged$1;->invoke$1()V

    return-object v0

    :pswitch_4
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent$stateChanged$1;->invoke$1()V

    return-object v0

    :pswitch_5
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent$stateChanged$1;->invoke$1()V

    return-object v0

    :pswitch_6
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent$stateChanged$1;->invoke$1()V

    return-object v0

    :goto_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/VstabIhcComponent$stateChanged$1;->invoke$1()V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
