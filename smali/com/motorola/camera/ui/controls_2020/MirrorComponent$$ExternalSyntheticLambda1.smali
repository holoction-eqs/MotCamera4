.class public final synthetic Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/MirrorComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/MirrorComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/controls_2020/MirrorComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda1;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/MirrorComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/controls_2020/MirrorComponent;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/MirrorComponent;->showAdjustIcon(Z)V

    return-void

    :goto_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->animateShow()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
