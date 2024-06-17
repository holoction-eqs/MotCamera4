.class public final synthetic Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/mcf/Mcf$OnControlListener;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/fsm/camera/modes/PhotoMode;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/fsm/camera/modes/PhotoMode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda4;->f$0:Lcom/motorola/camera/fsm/camera/modes/PhotoMode;

    return-void
.end method


# virtual methods
.method public final onFullFrameConfig$enumunboxing$(Ljava/lang/String;ILcom/motorola/camera/mcf/McfMetadata;)V
    .locals 2

    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$$ExternalSyntheticLambda4;->f$0:Lcom/motorola/camera/fsm/camera/modes/PhotoMode;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mMcfHolders:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;

    if-eqz p2, :cond_6

    add-int/lit8 p2, p2, -0x1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_3

    const/4 v1, 0x4

    if-eq p2, v1, :cond_2

    const/4 v1, 0x5

    if-eq p2, v1, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    iput v0, p1, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;->mPreviewFullFrameSkipCount:I

    goto :goto_1

    :cond_2
    const/4 p2, 0x2

    goto :goto_0

    :cond_3
    const/4 p2, 0x1

    :goto_0
    iput p2, p1, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;->mPreviewFullFrameSkipCount:I

    :goto_1
    sget-object p2, Lcom/motorola/camera/mcf/McfMetadata;->CONTROL_AE_EXPOSURE_COMPENSATION:Lcom/motorola/camera/mcf/McfMetadata$Key;

    invoke-virtual {p3, p2}, Lcom/motorola/camera/mcf/McfMetadata;->get(Lcom/motorola/camera/mcf/McfMetadata$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, p1, Lcom/motorola/camera/fsm/camera/modes/PhotoMode$McfHolder;->mFullFrameExposureCompensation:I

    :cond_4
    iget-object p0, p0, Lcom/motorola/camera/fsm/camera/modes/PhotoMode;->mFsmContext:Lcom/motorola/camera/fsm/camera/FsmContext;

    if-eqz p0, :cond_5

    new-instance p1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object p2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->MCF_FULL_FRAME_CONFIG_UPDATE:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {p1, p2}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/fsm/camera/FsmContext;->sendTrigger(Lcom/motorola/camera/fsm/camera/Trigger;)V

    :cond_5
    :goto_2
    return-void

    :cond_6
    const/4 p0, 0x0

    throw p0
.end method
