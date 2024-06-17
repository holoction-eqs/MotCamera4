.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/widgets/gl/PostCapture;

.field public final synthetic f$1:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/PostCapture;Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;I)V
    .locals 0

    iput p3, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/widgets/gl/PostCapture;

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda0;->f$1:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda0;->f$1:Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/PostCapture$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/widgets/gl/PostCapture;

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->createTempThumbnail(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)V

    return-void

    :goto_0
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/PostCapture;->createTempThumbnail(Lcom/motorola/camera/fsm/camera/record/SequenceIdentifier;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
