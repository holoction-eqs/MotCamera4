.class public final enum Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;

.field public static final enum ERROR:Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;

.field public static final enum LOADED:Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;

.field public static final enum PAUSED:Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;

.field public static final enum RECORDING:Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;

.field public static final enum STARTED:Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;

    const-string v1, "ERROR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;->ERROR:Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;

    new-instance v1, Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;

    const-string v2, "LOADED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;->LOADED:Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;

    new-instance v2, Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;

    const-string v3, "STARTED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;->STARTED:Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;

    new-instance v3, Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;

    const-string v4, "RECORDING"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;->RECORDING:Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;

    new-instance v4, Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;

    const-string v5, "PAUSED"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;->PAUSED:Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;->$VALUES:[Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;
    .locals 1

    const-class v0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;
    .locals 1

    sget-object v0, Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;->$VALUES:[Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;

    invoke-virtual {v0}, [Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/mediacodec/MediaCodecEngine$Flag;

    return-object v0
.end method
