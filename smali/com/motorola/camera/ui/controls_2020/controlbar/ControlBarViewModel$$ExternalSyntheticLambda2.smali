.class public final synthetic Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/settings/Setting;

.field public final synthetic f$1:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/settings/Setting;Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;I)V
    .locals 0

    iput p3, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/settings/Setting;

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$$ExternalSyntheticLambda2;->f$1:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$$ExternalSyntheticLambda2;->$r8$classId:I

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$$ExternalSyntheticLambda2;->f$1:Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;

    const-string v2, "this$0"

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v0

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/settings/Setting;

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    iput-boolean p0, v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->mcfFlash:Z

    iput-boolean p0, v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->halFlash:Z

    iput-boolean p0, v1, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->mcfTorch:Z

    :cond_0
    invoke-virtual {v1}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->updateItems$1()V

    return-void

    :goto_0
    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/motorola/camera/ui/controls_2020/controlbar/ControlBarViewModel;->updateItems$1()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
