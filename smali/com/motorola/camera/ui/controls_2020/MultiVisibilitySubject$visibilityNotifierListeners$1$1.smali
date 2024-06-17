.class public final Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject$visibilityNotifierListeners$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $index:I

.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;II)V
    .locals 0

    iput p3, p0, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject$visibilityNotifierListeners$1$1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject$visibilityNotifierListeners$1$1;->this$0:Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject$visibilityNotifierListeners$1$1;->$index:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke$2()Ljava/lang/Object;
    .locals 6

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    const/4 v1, 0x0

    iget v2, p0, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject$visibilityNotifierListeners$1$1;->$index:I

    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject$visibilityNotifierListeners$1$1;->this$0:Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;

    const/4 v4, 0x1

    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject$visibilityNotifierListeners$1$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    packed-switch p0, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    iget-object p0, v3, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;->mainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/motorola/camera/cli/content/CliContentViewModel$$ExternalSyntheticLambda0;

    invoke-direct {v1, v3, v2, v4, v4}, Lcom/motorola/camera/cli/content/CliContentViewModel$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;IZI)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :goto_0
    iget-object p0, v3, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;->mainThreadHandler:Landroid/os/Handler;

    new-instance v5, Lcom/motorola/camera/cli/content/CliContentViewModel$$ExternalSyntheticLambda0;

    invoke-direct {v5, v3, v2, v1, v4}, Lcom/motorola/camera/cli/content/CliContentViewModel$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;IZI)V

    invoke-virtual {p0, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-object v0

    :goto_2
    packed-switch p0, :pswitch_data_2

    goto :goto_3

    :pswitch_2
    iget-object p0, v3, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;->mainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/motorola/camera/cli/content/CliContentViewModel$$ExternalSyntheticLambda0;

    invoke-direct {v1, v3, v2, v4, v4}, Lcom/motorola/camera/cli/content/CliContentViewModel$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;IZI)V

    invoke-virtual {p0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4

    :goto_3
    iget-object p0, v3, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;->mainThreadHandler:Landroid/os/Handler;

    new-instance v5, Lcom/motorola/camera/cli/content/CliContentViewModel$$ExternalSyntheticLambda0;

    invoke-direct {v5, v3, v2, v1, v4}, Lcom/motorola/camera/cli/content/CliContentViewModel$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;IZI)V

    invoke-virtual {p0, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

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
