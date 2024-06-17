.class public final synthetic Lcom/motorola/camera/utility/AudioLensSwitchHelper$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field public final synthetic f$0:Lcom/motorola/camera/utility/AudioLensSwitchHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/utility/AudioLensSwitchHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/utility/AudioLensSwitchHelper;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper$$ExternalSyntheticLambda0;->f$0:Lcom/motorola/camera/utility/AudioLensSwitchHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "onStatus"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    array-length p2, p3

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    const/4 p1, 0x0

    aget-object p1, p3, p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object p0, p0, Lcom/motorola/camera/utility/AudioLensSwitchHelper;->mAudioLensStateCallback:Lcom/motorola/camera/utility/AudioLensSwitchHelper$AudioLensStateCallback;

    if-eqz p0, :cond_0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/MediaCodecComponent;->onStatus(I)V

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method
