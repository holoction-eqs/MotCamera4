.class public final synthetic Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder$1;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder$1;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder$1$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder$1$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder$1$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder$1$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder$1;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder$1;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;

    invoke-static {p0}, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->-$$Nest$mfinish(Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;)V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder$1;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;

    invoke-static {p0}, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->-$$Nest$mfinish(Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;)V

    return-void

    :pswitch_2
    iget-object p0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder$1;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;

    invoke-static {p0}, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->-$$Nest$mfinish(Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;)V

    return-void

    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder$1;->this$0:Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;

    invoke-static {p0}, Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;->-$$Nest$mfinish(Lcom/motorola/camera/cinemagraph/CinemagraphVideoEncoder;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
