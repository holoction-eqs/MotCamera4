.class public final enum Lcom/motorola/camera/scenedetection/scene/Scene$Platform;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/scenedetection/scene/Scene$Platform;

.field public static final enum NONE:Lcom/motorola/camera/scenedetection/scene/Scene$Platform;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/motorola/camera/scenedetection/scene/Scene$Platform;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/scenedetection/scene/Scene$Platform;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/scenedetection/scene/Scene$Platform;->NONE:Lcom/motorola/camera/scenedetection/scene/Scene$Platform;

    new-instance v1, Lcom/motorola/camera/scenedetection/scene/Scene$Platform;

    const-string v2, "LSI"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/motorola/camera/scenedetection/scene/Scene$Platform;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lcom/motorola/camera/scenedetection/scene/Scene$Platform;

    const-string v3, "QC_CHI"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/motorola/camera/scenedetection/scene/Scene$Platform;-><init>(Ljava/lang/String;I)V

    new-instance v3, Lcom/motorola/camera/scenedetection/scene/Scene$Platform;

    const-string v4, "QC_MMCAM"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/motorola/camera/scenedetection/scene/Scene$Platform;-><init>(Ljava/lang/String;I)V

    new-instance v4, Lcom/motorola/camera/scenedetection/scene/Scene$Platform;

    const-string v5, "MTK"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/motorola/camera/scenedetection/scene/Scene$Platform;-><init>(Ljava/lang/String;I)V

    new-instance v5, Lcom/motorola/camera/scenedetection/scene/Scene$Platform;

    const-string v6, "BLACK_SESAME"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/motorola/camera/scenedetection/scene/Scene$Platform;-><init>(Ljava/lang/String;I)V

    filled-new-array/range {v0 .. v5}, [Lcom/motorola/camera/scenedetection/scene/Scene$Platform;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/scenedetection/scene/Scene$Platform;->$VALUES:[Lcom/motorola/camera/scenedetection/scene/Scene$Platform;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/scenedetection/scene/Scene$Platform;
    .locals 1

    const-class v0, Lcom/motorola/camera/scenedetection/scene/Scene$Platform;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/scenedetection/scene/Scene$Platform;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/scenedetection/scene/Scene$Platform;
    .locals 1

    sget-object v0, Lcom/motorola/camera/scenedetection/scene/Scene$Platform;->$VALUES:[Lcom/motorola/camera/scenedetection/scene/Scene$Platform;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/scenedetection/scene/Scene$Platform;

    return-object v0
.end method
