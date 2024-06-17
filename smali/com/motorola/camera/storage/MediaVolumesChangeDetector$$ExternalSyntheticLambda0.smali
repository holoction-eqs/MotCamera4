.class public final synthetic Lcom/motorola/camera/storage/MediaVolumesChangeDetector$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/fsm/ChangeEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/fsm/ChangeEvent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/storage/MediaVolumesChangeDetector$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/motorola/camera/storage/MediaVolumesChangeDetector$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/fsm/ChangeEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/motorola/camera/storage/MediaVolumesChangeDetector$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/storage/MediaVolumesChangeDetector$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/fsm/ChangeEvent;

    const-string v1, "this$0"

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {p0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    iput-object v0, p0, Lcom/motorola/camera/fsm/ChangeEvent;->mState:Ljava/lang/Object;

    return-void

    :goto_0
    invoke-static {p0, v1}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/motorola/camera/fsm/ChangeEvent;->processMediaVolumes()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
