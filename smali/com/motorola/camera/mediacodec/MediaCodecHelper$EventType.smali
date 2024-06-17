.class public final enum Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;

.field public static final enum EOF_INPUT:Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;

.field public static final enum EOF_OUTPUT:Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;

.field public static final enum PAUSE:Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;

.field public static final enum RESUME:Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;

.field public static final enum START:Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;

.field public static final enum STOP:Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;

    const-string v1, "START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;->START:Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;

    new-instance v1, Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;

    const-string v2, "STOP"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;->STOP:Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;

    new-instance v2, Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;

    const-string v3, "PAUSE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;->PAUSE:Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;

    new-instance v3, Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;

    const-string v4, "RESUME"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;->RESUME:Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;

    new-instance v4, Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;

    const-string v5, "EOF_INPUT"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;->EOF_INPUT:Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;

    new-instance v5, Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;

    const-string v6, "EOF_OUTPUT"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;->EOF_OUTPUT:Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;

    filled-new-array/range {v0 .. v5}, [Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;->$VALUES:[Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;
    .locals 1

    const-class v0, Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;
    .locals 1

    sget-object v0, Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;->$VALUES:[Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/mediacodec/MediaCodecHelper$EventType;

    return-object v0
.end method
