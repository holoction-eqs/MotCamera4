.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$Flag;->CHECKING_TIMESTAMP:Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$Flag;

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->teardownMotionPhotos()V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)Z

    return-void

    :pswitch_2
    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$Flag;->PROCESS_FRAME:Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent$Flag;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/utility/Flags;->add(Ljava/lang/Enum;)Z

    return-void

    :pswitch_3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->stopEngine()V

    return-void

    :pswitch_4
    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->mFlags:Lcom/motorola/camera/utility/Flags;

    invoke-virtual {p0, v0}, Lcom/motorola/camera/utility/Flags;->remove(Ljava/lang/Object;)Z

    return-void

    :goto_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/MotionPhotosComponent;->setupMotionPhotos()V

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
