.class public final enum Lcom/motorola/camera/SkinToneDetection$SkinTone;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/SkinToneDetection$SkinTone;

.field public static final enum NONE:Lcom/motorola/camera/SkinToneDetection$SkinTone;


# instance fields
.field public final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/motorola/camera/SkinToneDetection$SkinTone;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/motorola/camera/SkinToneDetection$SkinTone;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/motorola/camera/SkinToneDetection$SkinTone;->NONE:Lcom/motorola/camera/SkinToneDetection$SkinTone;

    new-instance v1, Lcom/motorola/camera/SkinToneDetection$SkinTone;

    const/16 v2, 0x6a

    const-string v3, "SOUTH_ASIA"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/motorola/camera/SkinToneDetection$SkinTone;-><init>(Ljava/lang/String;II)V

    new-instance v2, Lcom/motorola/camera/SkinToneDetection$SkinTone;

    const/16 v3, 0x6b

    const-string v4, "AMERICAS"

    const/4 v5, 0x2

    invoke-direct {v2, v4, v5, v3}, Lcom/motorola/camera/SkinToneDetection$SkinTone;-><init>(Ljava/lang/String;II)V

    filled-new-array {v0, v1, v2}, [Lcom/motorola/camera/SkinToneDetection$SkinTone;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/SkinToneDetection$SkinTone;->$VALUES:[Lcom/motorola/camera/SkinToneDetection$SkinTone;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/motorola/camera/SkinToneDetection$SkinTone;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/SkinToneDetection$SkinTone;
    .locals 1

    const-class v0, Lcom/motorola/camera/SkinToneDetection$SkinTone;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/SkinToneDetection$SkinTone;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/SkinToneDetection$SkinTone;
    .locals 1

    sget-object v0, Lcom/motorola/camera/SkinToneDetection$SkinTone;->$VALUES:[Lcom/motorola/camera/SkinToneDetection$SkinTone;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/SkinToneDetection$SkinTone;

    return-object v0
.end method
