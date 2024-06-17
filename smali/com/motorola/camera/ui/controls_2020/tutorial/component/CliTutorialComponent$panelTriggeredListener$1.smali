.class public final Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent$panelTriggeredListener$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent$panelTriggeredListener$1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent$panelTriggeredListener$1;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke$1()V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent$panelTriggeredListener$1;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent$panelTriggeredListener$1;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent;->showModeTutorial()V

    return-void

    :pswitch_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent;->isControlPanelShown:Z

    return-void

    :goto_0
    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent;->isControlPanelShown:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent;->isControlPanelShown:Z

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final bridge synthetic invoke$2()Ljava/lang/Object;
    .locals 2

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    iget v1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent$panelTriggeredListener$1;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent$panelTriggeredListener$1;->invoke$1()V

    return-object v0

    :pswitch_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent$panelTriggeredListener$1;->invoke$1()V

    return-object v0

    :goto_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/component/CliTutorialComponent$panelTriggeredListener$1;->invoke$1()V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
