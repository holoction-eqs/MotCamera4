.class public final enum Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

.field public static final enum CAPTURE:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

.field public static final enum FULL_YUV:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

.field public static final enum GAIN_DETECT:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

.field public static final enum MINI_PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

.field public static final enum PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

.field public static final enum RAW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

.field public static final enum SUB_PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

.field public static final enum VIDEO:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    const-string v1, "PREVIEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    new-instance v1, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    const-string v2, "MINI_PREVIEW"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->MINI_PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    new-instance v2, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    const-string v3, "CAPTURE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->CAPTURE:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    new-instance v3, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    const-string v4, "VIDEO"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->VIDEO:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    new-instance v4, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    const-string v5, "FULL_YUV"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->FULL_YUV:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    new-instance v5, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    const-string v6, "GAIN_DETECT"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->GAIN_DETECT:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    new-instance v6, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    const-string v7, "RAW"

    const/4 v8, 0x6

    invoke-direct {v6, v7, v8}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->RAW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    new-instance v7, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    const-string v8, "SUB_PREVIEW"

    const/4 v9, 0x7

    invoke-direct {v7, v8, v9}, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->SUB_PREVIEW:Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    filled-new-array/range {v0 .. v7}, [Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->$VALUES:[Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;
    .locals 1

    const-class v0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;
    .locals 1

    sget-object v0, Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;->$VALUES:[Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/fsm/camera/SurfaceManager$SurfaceType;

    return-object v0
.end method
