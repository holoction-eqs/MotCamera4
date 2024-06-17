.class public final enum Lcom/motorola/camera/mcf/Mcf$FrameTarget;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/mcf/Mcf$FrameTarget;

.field public static final enum APP_JPEG_REPROC:Lcom/motorola/camera/mcf/Mcf$FrameTarget;

.field public static final enum INVALID:Lcom/motorola/camera/mcf/Mcf$FrameTarget;

.field public static final enum MCF_NEW_FRAME:Lcom/motorola/camera/mcf/Mcf$FrameTarget;

.field public static final enum MCF_REPROC:Lcom/motorola/camera/mcf/Mcf$FrameTarget;


# instance fields
.field public final mIntValue:I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/motorola/camera/mcf/Mcf$FrameTarget;

    const/4 v1, -0x1

    const-string v2, "INVALID"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/motorola/camera/mcf/Mcf$FrameTarget;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/motorola/camera/mcf/Mcf$FrameTarget;->INVALID:Lcom/motorola/camera/mcf/Mcf$FrameTarget;

    new-instance v1, Lcom/motorola/camera/mcf/Mcf$FrameTarget;

    const-string v2, "APP_JPEG_REPROC"

    const/4 v4, 0x1

    invoke-direct {v1, v2, v4, v3}, Lcom/motorola/camera/mcf/Mcf$FrameTarget;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/motorola/camera/mcf/Mcf$FrameTarget;->APP_JPEG_REPROC:Lcom/motorola/camera/mcf/Mcf$FrameTarget;

    new-instance v2, Lcom/motorola/camera/mcf/Mcf$FrameTarget;

    const-string v3, "MCF_NEW_FRAME"

    const/4 v5, 0x2

    invoke-direct {v2, v3, v5, v4}, Lcom/motorola/camera/mcf/Mcf$FrameTarget;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/motorola/camera/mcf/Mcf$FrameTarget;->MCF_NEW_FRAME:Lcom/motorola/camera/mcf/Mcf$FrameTarget;

    new-instance v3, Lcom/motorola/camera/mcf/Mcf$FrameTarget;

    const-string v4, "MCF_REPROC"

    const/4 v6, 0x3

    invoke-direct {v3, v4, v6, v5}, Lcom/motorola/camera/mcf/Mcf$FrameTarget;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/motorola/camera/mcf/Mcf$FrameTarget;->MCF_REPROC:Lcom/motorola/camera/mcf/Mcf$FrameTarget;

    filled-new-array {v0, v1, v2, v3}, [Lcom/motorola/camera/mcf/Mcf$FrameTarget;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/mcf/Mcf$FrameTarget;->$VALUES:[Lcom/motorola/camera/mcf/Mcf$FrameTarget;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/motorola/camera/mcf/Mcf$FrameTarget;->mIntValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/mcf/Mcf$FrameTarget;
    .locals 1

    const-class v0, Lcom/motorola/camera/mcf/Mcf$FrameTarget;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/mcf/Mcf$FrameTarget;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/mcf/Mcf$FrameTarget;
    .locals 1

    sget-object v0, Lcom/motorola/camera/mcf/Mcf$FrameTarget;->$VALUES:[Lcom/motorola/camera/mcf/Mcf$FrameTarget;

    invoke-virtual {v0}, [Lcom/motorola/camera/mcf/Mcf$FrameTarget;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/mcf/Mcf$FrameTarget;

    return-object v0
.end method
